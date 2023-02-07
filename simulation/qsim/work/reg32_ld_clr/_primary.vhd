library verilog;
use verilog.vl_types.all;
entity reg32_ld_clr is
    port(
        DOUT            : out    vl_logic_vector(31 downto 0);
        LD              : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        DIN             : in     vl_logic_vector(31 downto 0)
    );
end reg32_ld_clr;
