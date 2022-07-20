library verilog;
use verilog.vl_types.all;
entity reg11_inc_ld_clr is
    port(
        Cout            : out    vl_logic;
        I               : in     vl_logic_vector(10 downto 0);
        LD              : in     vl_logic;
        INC             : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        A               : out    vl_logic_vector(10 downto 0)
    );
end reg11_inc_ld_clr;
