library verilog;
use verilog.vl_types.all;
entity ARP_vlg_check_tst is
    port(
        ABUS            : in     vl_logic_vector(31 downto 0);
        DBUS            : in     vl_logic_vector(31 downto 0);
        LEN             : in     vl_logic_vector(1 downto 0);
        RD              : in     vl_logic;
        VGA_B           : in     vl_logic_vector(3 downto 0);
        VGA_G           : in     vl_logic_vector(3 downto 0);
        VGA_HS          : in     vl_logic;
        VGA_R           : in     vl_logic_vector(3 downto 0);
        VGA_VS          : in     vl_logic;
        WR              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ARP_vlg_check_tst;
