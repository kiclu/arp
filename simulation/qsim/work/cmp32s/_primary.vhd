library verilog;
use verilog.vl_types.all;
entity cmp32s is
    port(
        E               : out    vl_logic;
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        L               : out    vl_logic;
        G               : out    vl_logic
    );
end cmp32s;
