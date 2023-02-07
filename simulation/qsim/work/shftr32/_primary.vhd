library verilog;
use verilog.vl_types.all;
entity shftr32 is
    port(
        X               : out    vl_logic_vector(31 downto 0);
        ar              : in     vl_logic;
        B               : in     vl_logic_vector(31 downto 0);
        A               : in     vl_logic_vector(31 downto 0)
    );
end shftr32;
