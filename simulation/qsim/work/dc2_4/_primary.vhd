library verilog;
use verilog.vl_types.all;
entity dc2_4 is
    port(
        D1              : out    vl_logic;
        A               : in     vl_logic_vector(1 downto 0);
        E               : in     vl_logic;
        D0              : out    vl_logic;
        D2              : out    vl_logic;
        D3              : out    vl_logic
    );
end dc2_4;
