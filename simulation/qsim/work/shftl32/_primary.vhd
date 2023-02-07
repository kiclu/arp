library verilog;
use verilog.vl_types.all;
entity shftl32 is
    port(
        X               : out    vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        A               : in     vl_logic_vector(31 downto 0)
    );
end shftl32;
