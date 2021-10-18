`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////
// Design              : University of Elecro-Communications
// Engineer            : 
// 
// Create Date         : June/27/2014 
// Design Name         : SAKURA-G controller (SASEBO-GII compatibility mode)
// Module Name         : ft2232h_usbif
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

module ft2232h_usbif( 
  input        RSTn,             // Power on reset
  input        CLK,              // USB interface clock

  // USB controller(FT2232H) Interface
  input  [7:0] USB_DIN,          // USB data input bus
  output [7:0] USB_DOUT,         // USB data output  bus
  output       USB_RDn,          // USB read enable. Active low
  output       USB_WRn,          // USB write enable. Active low
  input        USB_RXFn,         // USB rx flag. High: Not ready  Low: ready
  input        USB_TXEn,         // USB tx enable. High: TX disable  Low: TX enable
  output       USB_DEN,          // USB tx data enable

  // Transmitt/Receive port
  input  [7:0] TXD,              // Transmit data input
  output [7:0] RXD,              // Receive data output
  output       TXD_RE,           // Read enable
  output       RXD_WE,           // Write enable
  input        TX_RDY,           // Transmit data ready
  input        RX_BUSY           // Receive data busy
);

  parameter USB_Idle = 3'h0,   USB_Read1 = 3'b1,  USB_Read2 = 3'h2,  USB_Read3 = 3'h3;
  parameter USB_Write1 = 3'h4, USB_Write2 = 3'h5, USB_Write3 = 3'h6, USB_Back_off = 3'h7;


// ===============================================================================
// Internal Signals
// ===============================================================================
  reg    [2:0] usb_state;        // USB Interface State Machine
  reg          usb_rxf_reg;      // #RXF input register
  reg          usb_txe_reg;      // #TXE input register

  reg          usb_rxd_read;     // #USB_RDn output register
  reg    [7:0] usb_rxdata;       // #USB_D input register
  reg          usb_txd_write;    // #USB_WRn output register
  wire   [7:0] usb_txdata;       // #USB_D output register
  reg          usb_dbus_oe;      // #USB_D output enable register

  reg          rxfifo_write;     //
  reg          txfifo_read;      //
  wire         rxfifo_full;      //
  wire         rxfifo_emp;       //
  wire         txfifo_full;      //
  wire         txfifo_emp;       //

// ===============================================================================
// Equetions
// ===============================================================================
  // USB( FT2232H ) interface
  // Signal input registers
  always @( posedge CLK or negedge RSTn ) begin
    if ( RSTn == 1'b0 ) begin
      usb_rxf_reg <= 1'b0;               // USB #RXF input register clear
      usb_txe_reg <= 1'b0;               // USB #TXE input register clear
    end
    else begin
      usb_rxf_reg <= ~USB_RXFn;          // USB #RXF input
      usb_txe_reg <= ~USB_TXEn;          // USB #TXE input
    end
  end


  // USB( FT2232H ) read/write state machine
  always@( posedge CLK or negedge RSTn ) begin
    if ( RSTn == 1'b0 ) begin
      usb_rxd_read <= 1'b0;
      usb_rxdata <= 8'h00;
      usb_txd_write <= 1'b0;
      rxfifo_write <= 1'b0;
      txfifo_read <= 1'b0;
      usb_dbus_oe <= 1'b0;
      usb_state <= USB_Idle;
    end
    else begin
      case ( usb_state )
        USB_Idle     : if (( usb_rxf_reg == 1'b1 ) && ( RX_BUSY == 1'b0 )) begin      // USB receive data valid
                         usb_rxd_read <= 1'b1;                                        // USB RD# Active
                         usb_state <= USB_Read1;
                       end
                       else if (( usb_txe_reg == 1'b1 ) && ( TX_RDY == 1'b1 )) begin  // USB transmit
                         txfifo_read <= 1'b1;
                         usb_state <= USB_Write1;
                       end
                       else usb_state <= USB_Idle;
        USB_Read1    : usb_state <= USB_Read2;
        USB_Read2    : begin
                         usb_rxdata <= USB_DIN;
                         usb_rxd_read <= 1'b0;                                        // USB RD# Disable
                         rxfifo_write <= 1'b1;                                        // RX FIFO write enable active
                         usb_state <= USB_Read3;
                       end
        USB_Read3    : begin
                         rxfifo_write <= 1'b0;
                         usb_state <= USB_Back_off;
                       end
        USB_Write1   : begin
                         txfifo_read <= 1'b0;
                         usb_dbus_oe <= 1'b1;                                         // USB_D output enable active
                         usb_state <= USB_Write2;
                       end
        USB_Write2   : begin
                         txfifo_read <= 1'b0;                                         // TX FIFO read enable
                         usb_txd_write <= 1'b1;                                       // USB data write
                         usb_state <= USB_Write3;
                       end
        USB_Write3   : begin
                         usb_state <= USB_Back_off;
                       end
        USB_Back_off : begin                                                          // USB bus Recovery cycle
                         usb_txd_write <= 1'b0;
                         usb_dbus_oe <= 1'b0;
                         usb_state <= USB_Idle;
                       end
             default : usb_state <= USB_Idle;
      endcase
    end
  end


  // USB Signals
  assign USB_RDn = ~usb_rxd_read;
  assign USB_WRn = ~usb_txd_write;
  assign USB_DOUT = TXD;
  assign USB_DEN = usb_dbus_oe;

  assign RXD = usb_rxdata;
  assign RXD_WE = rxfifo_write;

  assign TXD_RE = txfifo_read;

endmodule

