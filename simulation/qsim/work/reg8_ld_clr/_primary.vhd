library verilog;
use verilog.vl_types.all;
entity reg8_ld_clr is
    port(
        DOUT            : out    vl_logic_vector(7 downto 0);
        DIN             : in     vl_logic_vector(7 downto 0);
        LD              : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic
    );
end reg8_ld_clr;
