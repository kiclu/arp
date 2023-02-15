library verilog;
use verilog.vl_types.all;
entity reg11_ld_clr_inc is
    port(
        DOUT            : out    vl_logic_vector(10 downto 0);
        DIN             : in     vl_logic_vector(10 downto 0);
        LD              : in     vl_logic;
        INC             : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic
    );
end reg11_ld_clr_inc;
