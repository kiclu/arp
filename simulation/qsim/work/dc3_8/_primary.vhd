library verilog;
use verilog.vl_types.all;
entity dc3_8 is
    port(
        D0              : out    vl_logic;
        A               : in     vl_logic_vector(2 downto 0);
        E               : in     vl_logic;
        D1              : out    vl_logic;
        D2              : out    vl_logic;
        D3              : out    vl_logic;
        D4              : out    vl_logic;
        D5              : out    vl_logic;
        D6              : out    vl_logic;
        D7              : out    vl_logic
    );
end dc3_8;
