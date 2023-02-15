library verilog;
use verilog.vl_types.all;
entity sram_controller is
    port(
        DBUS            : inout  vl_logic_vector(31 downto 0);
        WR              : in     vl_logic;
        ABUS            : in     vl_logic_vector(31 downto 0);
        RD              : in     vl_logic;
        CLK             : in     vl_logic;
        LEN             : in     vl_logic_vector(1 downto 0)
    );
end sram_controller;
