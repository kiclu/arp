library verilog;
use verilog.vl_types.all;
entity shft16l32 is
    port(
        X               : out    vl_logic_vector(31 downto 0);
        A               : in     vl_logic_vector(31 downto 0)
    );
end shft16l32;
