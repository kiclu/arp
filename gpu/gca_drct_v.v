module gca_drct_v(
    input  [20:0] coord0,
    input  [20:0] coord1,
    input         LD,
    input         step,
    output [20:0] ADDR,
    output        FC,
    input         CLK
);

    reg  [10:0] x0;
    reg  [ 9:0] y0;

    wire [10:0] x1;
    wire [ 9:0] y1;

    assign {y1, x1} = coord1;

    assign ADDR = {y0, x0};
    assign FC = y0 > y1 && !LD;

    always @(posedge CLK) begin
        if(LD) {y0, x0} <= coord0;
        else if(step) begin
            if(x0 == x1) begin
                x0 <= coord0[10:0];
                y0 <= y0 + 1;
            end
            else x0 <= x0 + 1;
        end
    end

endmodule
