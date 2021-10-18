`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////
// Design              : University of Elecro-Communications
// Engineer            : 
// 
// Create Date         : June/27/2014 
// Design Name         : SAKURA-G controller (SASEBO-GII compatibility mode)
// Module Name         : cipher_if
// Project Name        : sakura_g_control
// Target Devices      : xc6slx9-2csg225
// Tool versions       : 13.4
// Description         : 
//
// Dependencies        : 
//
// Version             : 1.0
// Additional Comments : 
///////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) Satoh LaboratoryÅCUEC

module cipher_if(
  input            RSTn,        // Reset input
  input            CLK,         // Clock input

  input            HRRDYn,      // Host read ready
  input            HWRDYn,      // Host write ready
  output reg       HDRE,        // Host data read enable
  output reg       HDWE,        // Host data write enable
  input      [7:0] HDIN,        // Host data input
  output reg [7:0] HDOUT,       // Host data output

  input            DEVRDY,      // MAIN FPGA ready
  input            CRRDYn,      // Cipher read ready
  input            CWRDYn,      // Cipher write ready
  output reg       CDRE,        // Cipher data read enable
  output reg       CDWE,        // Cipher data write enable
  input      [7:0] CDIN,        // Cipher data input
  output reg [7:0] CDOUT        // cipher data output
);

`define  CW_IDLE  2'h0
`define  CW_FREAD 2'h1
`define  CW_WRITE 2'h2

`define  CR_IDLE  1'b0
`define  CR_READ  1'h1

// ===============================================================
// Internal signals
// ===============================================================
  reg        [1:0] cw_state;    // Main(cipher) FPGA write state machine register
  reg              cr_state;    // Main(cipher) FPGA read state machine register

// ===============================================================================
// Equetions
// ===============================================================================
  // Main FPGA write
  always @( posedge CLK or negedge RSTn )
    if ( RSTn == 1'b0 ) begin
      HDRE <= 1'b0;
      CDWE <= 1'b0;
      CDOUT <= 8'h00;
      cw_state <= `CW_IDLE;
    end
    else begin
      case ( cw_state )
        `CW_IDLE  : if (( DEVRDY == 1'b1 ) && ( HRRDYn == 1'b0 )) begin
                      HDRE <= 1'b1; 
                      CDWE <= 1'b0;
                      cw_state <= `CW_FREAD;
                    end
                    else begin
                      CDWE <= 1'b0;
                      cw_state <= `CW_IDLE;
                    end
        `CW_FREAD : begin                          // USB receive data FIFO read
                      HDRE <= 1'b0; 
                      cw_state <= `CW_WRITE;
                    end

        `CW_WRITE : if ( CWRDYn == 1'b0 ) begin    // LBUS write
                      CDWE <= 1'b1;
                      CDOUT <= HDIN;
                      cw_state <= `CW_IDLE;
                    end
                    else begin
                      CDWE <= 1'b0; 
                      cw_state <= `CW_WRITE;
                    end

          default : cw_state <= `CW_IDLE;
      endcase
    end


  // Main FPGA read
  always @( posedge CLK or negedge RSTn )
    if ( RSTn == 1'b0 ) begin
      CDRE <= 1'b0;
      HDWE <= 1'b0;
      HDOUT <= 8'h00;
      cr_state <= `CR_IDLE;
    end
    else begin
      case ( cr_state )
        `CR_IDLE  : if (( DEVRDY == 1'b1 ) && ( HWRDYn == 1'b0 ) && ( CRRDYn == 1'b0 )) begin
                      CDRE <= 1'b1;
                      HDWE <= 1'b0;
                      cr_state <= `CR_READ;
                    end
                    else begin
                      CDRE <= 1'b0;
                      HDWE <= 1'b0;
                      cr_state <= `CR_IDLE;
                    end

        `CR_READ  : begin                          // LBUS read
                      CDRE <= 1'b0;
                      HDWE <= 1'b1;
                      HDOUT <= CDIN;
                      cr_state <= `CR_IDLE;
                    end

          default : cr_state <= `CR_IDLE;
      endcase
    end

endmodule
