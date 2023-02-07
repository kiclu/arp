library verilog;
use verilog.vl_types.all;
entity reg1_ld_clr is
    port(
        DOUT            : out    vl_logic;
        CLR             : in     vl_logic;
        DIN             : in     vl_logic;
        LD              : in     vl_logic;
        CLK             : in     vl_logic
    );
end reg1_ld_clr;
