library verilog;
use verilog.vl_types.all;
entity reg10_ld_clr_inc is
    port(
        DOUT            : out    vl_logic_vector(9 downto 0);
        DIN             : in     vl_logic_vector(9 downto 0);
        LD              : in     vl_logic;
        INC             : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic
    );
end reg10_ld_clr_inc;
