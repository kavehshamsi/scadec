`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////
// Design              : University of Elecro-Communications
// Engineer            : 
// 
// Create Date         : July/29/2014 
// Design Name         : SAKURA-G controller (SASEBO-GII compatibility mode)
// Module Name         : sakura_g_control
// Project Name        : sakura_g_control
// Target Devices      : xc6slx9-2csg225
// Tool versions       : 13.4
// Description         : 
//
// Dependencies        : 
//
// Last Updata         : July/29/2014
// Version             : 1.0
// Additional Comments : 
///////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) Satoh LaboratoryÅCUEC

module sakura_g_control(
  // Reset, Clock
  input         rstnin,               // Power-on reset (C_RESETn_B)
  input         clkin,                // Clock input 48MHz (C_CLK_OSC)
  output        CLK_OSC_INH_B,        // Clock inhibit  *SAKURA-G only

  // FT2232H interface
  input         usb_rxfn,             // USB portA rx flag. High: Not ready  Low: ready (FTDI_ACBUS0_RXFn_B)
  input         usb_txen,             // USB portA tx enable. High: TX disable  Low: TX enable (FTDI_ACBUS1_TXEn_B)
  output        usb_rdn,              // USB portA read enable. Active low (FTDI_ACBUS2_RDn_B)
  output        usb_wrn,              // USB portA write enable. Active low (FTDI_ACBUS3_WRn_B)
  inout   [7:0] usb_d,                // USB portA data bus (FTDI_ADBUS)
  output        FTDI_ACBUS4_SIWUA,    // *SAKURA-G only
  output        C_FTDI_RESET_B,       // *SAKURA-G only

  // MAIN FPGA Interface
  input         lbus_rdy,             // MAIN FPGA ready
  output        lbus_rstn,            // Local bus(Main FPGA) reset low
  output        lbus_clk,             // Local bus clock(1.5MHz)
  output  [7:0] lbus_wd,              // Local bus write data
  output        lbus_we,              // Local bus write enable
  input         lbus_ful,             // Local bus full
//input         lbus_aful,            // Local bus almost full   *SAKURA-G intact
  input   [7:0] lbus_rd,              // Local bus read data
  output        lbus_re,              // Local bus read enable
  input         lbus_emp,             // Local bus empty
//input         lbus_aemp,            // Local bus almost empty  *SAKURA-G intact

  // MAIN FPGA configuration signals
  input         cfg_din,              // M_D0_DIN_MISO_R,
  input         cfg_mosi,             // M_MOSI_CSI_B_R
  input         cfg_fcsb,             // M_CSO_B_R,
  input         cfg_cclk,             // M_CCLK_R
  input         cfg_progn,            // M_PROG_B_R
  input         cfg_initn,            // M_INIT_B_R
  input         cfg_rdwrn,            // M_RDWR_B_R
  input         cfg_busy,             // M_DOUT_BUSY_R,
  input         cfg_done,             // M_DONE_R

  // LED & Switch
  output [9:0]  led,                  // LED
  input         C_PUSHSW,             // Push switch. Reset input *SAKURA-G only
  input  [3:0]  C_DIPSW,              // DIP switch input *SAKURA-G only

  // FTDI USB interface portB *SAKURA-G only
  input         PORT_B_RXF,           // USB portB rx flag. High: Not ready  Low: ready *SAKURA-G only
  input         PORT_B_TXE,           // USB portB tx enable. High: TX disable  Low: TX enable *SAKURA-G only
  output        PORT_B_RD,            // USB portB read enable. Active low *SAKURA-G only
  output        PORT_B_WR,            // USB portB write enable. Active low *SAKURA-G only
  input   [7:0] PORT_B_DIN,           // USB portB data input *SAKURA-G only
  output  [7:0] PORT_B_DOUT,          // USB portB data output *SAKURA-G only
  output        PORT_B_OEn            // USB portB data output enable *SAKURA-G only
);

// ===============================================================
// Internal signals
// ===============================================================
  // Reset
  wire          ext_rstn;      // External reset
  wire          resetn;        // Internal reset

  // Internal clock
  wire          clk;           // System clock 1.5MHz
  wire          usb_clk;       // USB interface clock 24MHz

  // USB
  wire          rxfifo_full;   // USB receive data FIFO full flag
  wire          rxfifo_empty;  // USB receive data FIFO full flag
  wire          rxfifo_write;  // USB receive data FIOF write enable;
  wire          rxfifo_read;   // USB receive data FIFO read enable
  wire    [7:0] rxdata;        // USB rsceive data FIFO data output
  wire          txfifo_empty;
  wire          txfifo_write;
  wire    [7:0] txdata;

  wire          usb_rxf_n;
  wire          usb_txe_n;
  wire          usb_read_n;
  wire          usb_write_n;
  wire    [7:0] usb_rx_data;
  wire    [7:0] usb_tx_data;
  wire          usb_txena;     // USB transmit data enable

  // Local bus
  wire    [7:0] wd1;
  wire    [7:0] rd1;
      
  // etc
  reg    [21:0] cnt;
  
// ===============================================================
// Equations
// ===============================================================
  // Input reset
  assign ext_rstn = ~( ~rstnin | ~cfg_done | C_PUSHSW );

  // Clock genarater
  clk_generater clk_gen
  (
    .rstnin( ext_rstn ), .clkin( clkin ),
    .frequency_sel( C_DIPSW[3:1] ),
    .rstnout( resetn ), .clk( clk ), .usbclk( usb_clk )
  );


  // LED display
  assign led[0] = ~cnt[21];
  assign led[1] = ~resetn;
  assign led[2] = ( lbus_rdy & cfg_done );
  assign led[3] = ( cfg_initn | cfg_progn | cfg_done | cfg_rdwrn | cfg_busy );
  assign led[4] = cfg_din;
  assign led[5] = cfg_mosi;
  assign led[6] = cfg_fcsb;
  assign led[7] = cfg_cclk;
  assign led[8] = C_DIPSW[0];     // ON : SASEBO-GII software Full compati mode
  assign led[9] = cnt[21];

  always @(posedge clk or negedge resetn) begin
    if ( resetn == 1'b0 ) cnt <= 22'h0;
    else cnt <= cnt + 1'b1;
  end


  //-----------------------------------------------------------------------------------------
  // USB interface
  // C_DIPSW Off: PORT A Select
  //         On : PORT B Select
  //-----------------------------------------------------------------------------------------
  assign usb_rxf_n = ( C_DIPSW[0] == 1'b0 )? usb_rxfn : PORT_B_RXF;
  assign usb_txe_n = ( C_DIPSW[0] == 1'b0 )? usb_txen : PORT_B_TXE;
  assign usb_rx_data = ( C_DIPSW[0] == 1'b0 )? usb_d : PORT_B_DIN;

  ft2232h_usbif usbif(
    .RSTn( resetn ), .CLK( usb_clk ),
    .USB_DIN( usb_rx_data ), .USB_DOUT( usb_tx_data ), .USB_RDn( usb_read_n ), .USB_WRn( usb_write_n ),
    .USB_RXFn( usb_rxf_n ), .USB_TXEn( usb_txe_n ),
    .USB_DEN( usb_txena ),
    .RXD( rxdata ), .RXD_WE( rxfifo_write ), .RX_BUSY( rxfifo_full ),
    .TXD( txdata ), .TXD_RE( txfifo_read ), .TX_RDY( ~txfifo_empty )
  );


  assign usb_d = (( C_DIPSW[0] == 1'b0 ) && ( usb_txena == 1'b1 ))? usb_tx_data : 8'hzz;
  assign usb_rdn = ( C_DIPSW[0] == 1'b0 )? usb_read_n :1'b1;
  assign usb_wrn = ( C_DIPSW[0] == 1'b0 )? usb_write_n :1'b1;

  assign PORT_B_RD = ( C_DIPSW[0] == 1'b1 )? usb_read_n :1'b1;
  assign PORT_B_WR = ( C_DIPSW[0] == 1'b1 )? usb_write_n :1'b1;
  assign PORT_B_DOUT = ( C_DIPSW[0] == 1'b1 )? usb_tx_data : 8'hzz;
  assign PORT_B_OEn  = ( C_DIPSW[0] == 1'b1 )? ~usb_txena : 1'b1;


  // USB Receive Data FIFO
  asclk_fifo rx_fifo (
    .RSTn( resetn ), .WCLK( usb_clk ), .RCLK( clk ),
    .D( rxdata ), .WE( rxfifo_write ), .Q( rd1 ), .RE( rxfifo_read ),
    .EMPTY( rxfifo_empty ), .FULL( rxfifo_full )
  );

  // USB Transmit Data FIFO
  asclk_fifo tx_fifo (
    .RSTn( resetn ), .WCLK( clk ), .RCLK( usb_clk ),
    .D( wd1 ), .WE( txfifo_write ), .Q( txdata ), .RE( txfifo_read ),
    .EMPTY( txfifo_empty ), .FULL( txfifo_full )
  );


  //-----------------------------------------------------------------------------------------
  // Cipher FPGA Interface
  //-----------------------------------------------------------------------------------------
  cipher_if cipher_if (
    .RSTn( resetn ), .CLK( clk ),
    .HRRDYn( rxfifo_empty ),  .HWRDYn( txfifo_full ),
    .HDRE( rxfifo_read ), .HDWE( txfifo_write ),
    .HDIN( rd1 ), .HDOUT( wd1 ),
    .DEVRDY( lbus_rdy ),
    .CRRDYn( lbus_emp ), .CWRDYn( lbus_ful ),
    .CDRE( lbus_re ), .CDWE( lbus_we ),
    .CDIN( lbus_rd ), .CDOUT( lbus_wd )
  );


  assign lbus_rstn = resetn;

  // Lbus clock
  ODDR2 u0 (.D0( 1'b0 ), .D1( 1'b1 ), .C0( clk ), .C1( ~clk ),
            .Q( lbus_clk ),       .CE( 1'b1 ),  .R( 1'b0 ), .S( 1'b0 ));


  assign CLK_OSC_INH_B = 1'b1;
  assign FTDI_ACBUS4_SIWUA = 1'b0;
  assign C_FTDI_RESET_B = rstnin;

endmodule

//=================================================================
// Reset and Clock generater
//=================================================================
module clk_generater
( 
  input             rstnin,
  input             clkin,
  input       [2:0] frequency_sel,
  output            clk,
  output            usbclk,
  output  reg       rstnout
);
   
   //------------------------------------
  wire              clkin_buf;
  wire              clk_fbin;
  wire              clk_fbout;
  wire              clkout0;
  wire              clkout1;
  wire              locked;
  reg        [3:0]  dev0_count;
  reg               sysclk;
  reg        [3:0]  count_out;
  reg        [7:0]  count;
   
//------------------------------------
  IBUFG u0 (.I( clkin ), .O( clkin_buf ));   // Clock input buffer
   
  // input  clock : 48.0 MHz
  // output clock0: 48.0 MHz (48 * 10 / 10)  System clock*N
  // output clock1: 24.0 MHz (48 * 10 / 20)  USB clock
  // divide sysclk: 1.5~24.0 MHz (48 / N)    clock0/N
  PLL_BASE #(.BANDWIDTH          ("OPTIMIZED"),
             .CLK_FEEDBACK       ("CLKFBOUT"),
             .COMPENSATION       ("SYSTEM_SYNCHRONOUS"),
             .DIVCLK_DIVIDE      (1),
             .CLKFBOUT_MULT      (10),         // 480MHz Input clock(48MHz) * 10
             .CLKFBOUT_PHASE     (0.000),

             .CLKOUT0_DIVIDE     (10),         // 48MHz System clock * (2~32)
             .CLKOUT0_PHASE      (0.000),
             .CLKOUT0_DUTY_CYCLE (0.500),

             .CLKOUT1_DIVIDE     (20),         // 24MHz USB interface clock
             .CLKOUT1_PHASE      (0.000),
             .CLKOUT1_DUTY_CYCLE (0.500),

             .CLKOUT2_DIVIDE     (10),
             .CLKOUT2_PHASE      (0.000),
             .CLKOUT2_DUTY_CYCLE (0.500),

             .CLKOUT3_DIVIDE     (10),
             .CLKOUT3_PHASE      (0.000),
             .CLKOUT3_DUTY_CYCLE (0.500),

             .CLKOUT4_DIVIDE     (32),
             .CLKOUT4_PHASE      (0.000),
             .CLKOUT4_DUTY_CYCLE (0.500),

             .CLKOUT5_DIVIDE     (32),
             .CLKOUT5_PHASE      (0.000),
             .CLKOUT5_DUTY_CYCLE (0.500),

             .CLKIN_PERIOD       (20.833),
             .REF_JITTER         (0.010))

  pll_base( .CLKIN( clkin_buf ), .RST( ~rstnin ), 
            .CLKFBOUT( clk_fbout ), .CLKFBIN( clk_fbin ),
            .LOCKED( locked ),
            .CLKOUT0 ( clkout0 ),  .CLKOUT1 ( clkout1 ),
            .CLKOUT2 (),           .CLKOUT3 (),
            .CLKOUT4 (),           .CLKOUT5 ()
          );


  // Clock divide selecter
  always @( frequency_sel ) begin
    if ( frequency_sel[0] == 1'b0 ) count_out = 4'hf;
	 else begin
	   case ( frequency_sel[2:1] )
        2'h0: count_out = 4'h7;  // 3MHz
        2'h1: count_out = 4'h3;  // 6MHz
        2'h2: count_out = 4'h1;  // 12MHz
        2'h3: count_out = 4'h0;  // 24MHz
      endcase
    end
  end

  // Clock divider
  always @( posedge clkout0 or negedge rstnin ) begin
    if ( rstnin == 1'b0 ) begin
      dev0_count <= 4'h0;
      sysclk <= 1'b0;
    end
    else begin
      if ( dev0_count == count_out ) dev0_count <= 4'h0;
      else dev0_count <= dev0_count + 1'b1;

      if ( dev0_count == 4'h0 ) sysclk <= ~sysclk;
      else sysclk <= sysclk;
    end
  end

  BUFG u1 (.I( clk_fbout ), .O( clk_fbin ));     // Feedback clock buffer
  BUFH u2 (.I( sysclk ),    .O( clk ));          // System clock 1.5~24MHz
  BUFH u3 (.I( clkout1 ),   .O( usbclk ));       // USB clock 24MHz


  // Delay Reset
  always @( posedge clk or negedge rstnin ) begin
    if ( rstnin == 1'b0 ) begin
      count <= 8'h0;
      rstnout <= 1'b0;
    end
    else begin
      if ( locked == 1'b0 ) count <= 8'h00;
      else if ( ~&count ) count <= count + 1'b1;
      else count <= count;

      rstnout <= &count;
    end
  end

endmodule

