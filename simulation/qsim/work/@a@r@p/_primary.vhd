library verilog;
use verilog.vl_types.all;
entity ARP is
    port(
        VGA_HS          : out    vl_logic;
        VGA_VS          : out    vl_logic;
        RD              : out    vl_logic;
        CLK             : in     vl_logic;
        DBUS            : inout  vl_logic_vector(31 downto 0);
        WR              : out    vl_logic;
        ABUS            : out    vl_logic_vector(31 downto 0);
        LEN             : out    vl_logic_vector(1 downto 0);
        VGA_B           : out    vl_logic_vector(3 downto 0);
        VGA_G           : out    vl_logic_vector(3 downto 0);
        VGA_R           : out    vl_logic_vector(3 downto 0)
    );
end ARP;
