`default_nettype none

module qspi_phy_4x #(
	parameter integer N_CS = 2,
	parameter integer WITH_CLK = 1,
	parameter integer CL = N_CS ? (N_CS-1) : 0
)(
	// Pads
	inout  wire [ 3:0] pad_io,
	output wire        pad_clk,
	output wire [CL:0] pad_cs_n,

	// PHY
	output wire [15:0] phy_io_i,
	input  wire [15:0] phy_io_o,
	input  wire [ 3:0] phy_io_oe,
	input  wire [ 3:0] phy_clk_o,
	input  wire [CL:0] phy_cs_o,

	// Clock
	input  wire clk_1x,
	input  wire clk_4x,
	input  wire clk_sync
);

	qspi_phy_ice40_4x #(
		.N_CS(N_CS),
		.WITH_CLK(WITH_CLK)
	) qspi_phy (
		.pad_io(pad_io),
		.pad_clk(pad_clk),
		.pad_cs_n(pad_cs_n),
		.phy_io_i(phy_io_i),
		.phy_io_o(phy_io_o),
		.phy_io_oe(phy_io_oe),
		.phy_clk_o(phy_clk_o),
		.phy_cs_o(phy_cs_o),
		.clk_1x(clk_1x),
		.clk_4x(clk_4x),
		.clk_sync(clk_sync)
	);

endmodule
