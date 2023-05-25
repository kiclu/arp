module wtc_addr_dc_v(
	input [20:0] 		PX_ADDR,
	input [20:0] 		PX_ADDR_DIF,
	input					E,
	input					hdae,
	output reg			BA_0,
	output reg			BA_1,
	output [7:0]		COL_0,
	output reg			WE_0,
	output [7:0]		COL_1,
	output reg			WE_1,
	output [7:0]		COL_2,
	output reg			WE_2,
	output [7:0]		COL_3,
	output reg			WE_3
);
	wire [10:0] x_dif;
	wire [9:0]	y_dif;
	wire [10:0]	x;
	wire [9:0]	y;
	
	assign {y_dif, x_dif} = PX_ADDR_DIF;
	assign {y, x} = PX_ADDR;
	
	assign COL_0 = x;
	assign COL_1 = x - 200;
	assign COL_2 = x - 400;
	assign COL_3 = x - 600;

	always @(*) begin
		if(E) begin
			if((x_dif > 810 || y_dif > 600) && x_dif < 1000) begin
				if(x < 200) begin
					BA_0 <= 0;
					BA_1 <= 0;
					WE_0 <= 1;
					WE_1 <= 0;
					WE_2 <= 0;
					WE_3 <= 0;
				end
				else if(x < 400) begin
					BA_0 <= 1;
					BA_1 <= 0;
					WE_0 <= 0;
					WE_1 <= 1;
					WE_2 <= 0;
					WE_3 <= 0;
				end
				else if(x < 600) begin
					BA_0 <= 0;
					BA_1 <= 1;
					WE_0 <= 0;
					WE_1 <= 0;
					WE_2 <= 1;
					WE_3 <= 0;
				end
				else if(x < 800) begin
					BA_0 <= 1;
					BA_1 <= 1;
					WE_0 <= 0;
					WE_1 <= 0;
					WE_2 <= 0;
					WE_3 <= 1;
				end
				else begin
					WE_0 <= 0;
					WE_1 <= 0;
					WE_2 <= 0;
					WE_3 <= 0;
				end
			end
		end
		else begin
			WE_0 <= 0;
			WE_1 <= 0;
			WE_2 <= 0;
			WE_3 <= 0;
		end
	end
endmodule
