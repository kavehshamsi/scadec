`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////
// Design              : University of Elecro-Communications
// Engineer            : 
// 
// Create Date         : June/27/2014
// Design Name         : Async clock FIFO
// Module Name         : asclk_fifo
// Project Name        : sakura_g_ctrl
// Target Devices      : Xilinx
// Tool versions       : 13.4
// Description         : 
//
// Dependencies        : 
//
// Version             : 1.0
// Additional Comments : Async Clock FIFO
///////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) Satoh LaboratoryÅCUEC

module asclk_fifo #(
  parameter DATA_WIDTH = 8, /*parameter FIFO_DEPTH = 128,*/ parameter ADDR_WIDTH = 7
)
(
  input                   RSTn,     // Reset
  input                   WCLK,     // Write clock
  input                   RCLK,     // Read clock
  input  [DATA_WIDTH-1:0] D,        // Data input
  input                   WE,       // Write enable
  input                   RE,       // Rasd enable
  output [DATA_WIDTH-1:0] Q,        // Data output
  output                  FULL,     // Full flag
  output                  EMPTY     // Empty flag
);

  parameter COUNTER_WIDTH = ADDR_WIDTH + 1;


// ===============================================================
// Internal signals
// ===============================================================
  reg     [DATA_WIDTH-1:0] mem[0:2**ADDR_WIDTH-1];
  reg     [DATA_WIDTH-1:0] data_out;
  wire                     write_enable;
  wire                     read_enable;

  wire [COUNTER_WIDTH-1:0] next_waddr;            // Binary next write address
  wire [COUNTER_WIDTH-1:0] next_wptr;             // Gray code next write pointer
  reg  [COUNTER_WIDTH-1:0] write_addr;            // Memory write address
  reg  [COUNTER_WIDTH-1:0] write_pointer;         // Gray code pointer
  reg  [COUNTER_WIDTH-1:0] wsync_rp1, wsync_rp2;  // Read pointer sync register

  wire [COUNTER_WIDTH-1:0] next_raddr;            // Binary next read address
  wire [COUNTER_WIDTH-1:0] next_rptr;             // Gray code next write pointer
  reg  [COUNTER_WIDTH-1:0] read_addr;             // memory read address
  reg  [COUNTER_WIDTH-1:0] read_pointer;          // Gray code pointer
  reg  [COUNTER_WIDTH-1:0] rsync_wp1, rsync_wp2;  // Write pointer sync register
  reg                      full_flag;
  reg                      empty_flag;

// ===============================================================
// Equetions
// ===============================================================
  assign write_enable = WE & ~full_flag;
  assign read_enable  = RE & ~empty_flag;

  // Memory block
  always @ ( posedge WCLK )
    if ( write_enable == 1'b1 ) mem[write_addr[ADDR_WIDTH-1:0]] <= D;

  always @ ( posedge RCLK )
    if ( read_enable == 1'b1 ) data_out <= mem[read_addr[ADDR_WIDTH-1:0]];


  // Write Address and Pointer
  always @ ( posedge WCLK or negedge RSTn ) begin
    if ( RSTn == 1'b0 ) begin
      write_addr <= {COUNTER_WIDTH{1'b0}};
      write_pointer <= {COUNTER_WIDTH{1'b0}};
    end
    else begin
      if ( write_enable ) begin
        write_addr <= next_waddr;
        write_pointer <= next_wptr;
      end
      else begin
        write_addr <= write_addr;
        write_pointer <= write_pointer;
      end
    end
  end

  assign next_waddr = write_addr + 1'b1;
  assign next_wptr = { next_waddr[COUNTER_WIDTH-1], next_waddr[COUNTER_WIDTH-2:0] ^ next_waddr[COUNTER_WIDTH-1:1]};


  // Sync Read pointer
  // read_pointer -> wsync_rp1 -> wsync_rp2
  always @ ( posedge WCLK or negedge RSTn ) begin
    if ( RSTn == 1'b0 ) begin
      wsync_rp1 <= {COUNTER_WIDTH{1'b0}};
      wsync_rp2 <= {COUNTER_WIDTH{1'b0}};
    end
    else begin
      wsync_rp1 <= read_pointer;
      wsync_rp2 <= wsync_rp1;
    end
  end


  always @ ( posedge WCLK or negedge RSTn ) begin
    if ( RSTn == 1'b0 ) full_flag <= 1'b0;
    else if ((( next_wptr == { ~wsync_rp2[COUNTER_WIDTH-1:COUNTER_WIDTH-2], wsync_rp2[COUNTER_WIDTH-3:0] }) && ( WE == 1'b1 ))
           || ( write_pointer == { ~wsync_rp2[COUNTER_WIDTH-1:COUNTER_WIDTH-2], wsync_rp2[COUNTER_WIDTH-3:0] }))
      full_flag <= 1'b1;
    else full_flag <= 1'b0;
  end


  // Read Address and Pointer
  always @ ( posedge RCLK or negedge RSTn ) begin
    if ( RSTn == 1'b0 ) begin
      read_addr <= {COUNTER_WIDTH{1'b0}};
      read_pointer <= {COUNTER_WIDTH{1'b0}};
    end
    else begin
      if ( read_enable ) begin
        read_addr <= next_raddr;
        read_pointer <= next_rptr;
      end
      else begin
        read_addr <= read_addr;
        read_pointer <= read_pointer;
      end
    end
  end

  assign next_raddr = read_addr + 1'b1;
  assign next_rptr = { next_raddr[COUNTER_WIDTH-1], next_raddr[COUNTER_WIDTH-2:0] ^ next_raddr[COUNTER_WIDTH-1:1]};


  // Sync Write pointer
  // write_pointer -> rsync_wp1 -> rsync_wp2
  always @ ( posedge RCLK or negedge RSTn ) begin
    if ( RSTn == 1'b0 ) begin
      rsync_wp1 <= {COUNTER_WIDTH{1'b0}};
      rsync_wp2 <= {COUNTER_WIDTH{1'b0}};
    end
    else begin
      rsync_wp1 <= write_pointer;
      rsync_wp2 <= rsync_wp1;
    end
  end

  always @ ( posedge RCLK or negedge RSTn ) begin
    if ( RSTn == 1'b0 ) empty_flag <= 1'b1;
    else if ((( next_rptr == rsync_wp2[COUNTER_WIDTH-1:0] ) && ( RE == 1'b1 ))
           || ( read_pointer == rsync_wp2[COUNTER_WIDTH-1:0] ))
      empty_flag <= 1'b1;
    else empty_flag <= 1'b0;
  end

  assign Q = data_out;
  assign FULL = full_flag;
  assign EMPTY = empty_flag;

endmodule

