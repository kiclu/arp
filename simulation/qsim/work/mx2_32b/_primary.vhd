library verilog;
use verilog.vl_types.all;
entity mx2_32b is
    port(
        O               : out    vl_logic_vector(31 downto 0);
        I0              : in     vl_logic_vector(31 downto 0);
        S               : in     vl_logic;
        I1              : in     vl_logic_vector(31 downto 0)
    );
end mx2_32b;
