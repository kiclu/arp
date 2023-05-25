module gca_dlnv(
    input [31:0]    coord0,
    input [31:0]    coord1,
    input           ld,
    input           step,
    input           CLK,
    output          FC,
    output [20:0]   ADDR
);
    reg         [15:0] x0;
    reg         [15:0] y0;
    wire        [15:0] x1;
    wire        [15:0] y1;
    reg  signed [15:0] dx, dy;
    reg  signed [15:0] sx, sy;
    reg  signed [15:0] error;
    wire signed [15:0] e2;

    assign x1 = {5'b0, coord1[10:0]};
    assign y1 = {6'b0, coord1[20:11]};

    assign e2 = error <<< 1;

    assign ADDR = {y0[9:0], x0[10:0]};
    assign FC = !ld && (x0 == x1 && y0 == y1 || e2 >= dy && x0 == x1 || e2 <= dx && y0 == y1);

    always @(posedge CLK) begin
        if(ld) begin
            x0 <= {5'b0, coord0[10:0]};
            y0 <= {6'b0, coord0[20:11]};

            sx <= (x0 > x1) ? -16'd1 : 16'd1;
            sy <= (y0 > y1) ? -16'd1 : 16'd1;

            dx <= (x0 < x1) ? (x1 - x0) : (x0 - x1);
            dy <= (y1 < y0) ? (y1 - y0) : (y0 - y1);

            error <= dx + dy;
        end

        if(step && !ld) begin
            if(e2 >= dy) x0 <= x0 + sx;
            if(e2 <= dx) y0 <= y0 + sy;

            if(e2 >= dy && e2 <= dx)
                error <= error + dx + dy;
            else if(e2 >= dy)
                error <= error + dy;
            else if(e2 <= dx)
                error <= error + dx;
        end
    end

endmodule
