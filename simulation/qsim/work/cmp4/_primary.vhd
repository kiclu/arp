library verilog;
use verilog.vl_types.all;
entity cmp4 is
    port(
        E1              : out    vl_logic;
        E0              : in     vl_logic;
        B               : in     vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        G1              : out    vl_logic;
        L0              : in     vl_logic;
        L1              : out    vl_logic;
        G0              : in     vl_logic
    );
end cmp4;
