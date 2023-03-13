library verilog;
use verilog.vl_types.all;
entity ARP is
    port(
        VGA_HS          : out    vl_logic;
        CLK             : in     vl_logic;
        BTN             : in     vl_logic_vector(2 downto 0);
        PS2_KBCLK       : in     vl_logic;
        PS2_KBDAT       : in     vl_logic;
        SW              : in     vl_logic_vector(9 downto 0);
        DRAM_DQ         : inout  vl_logic_vector(15 downto 0);
        VGA_VS          : out    vl_logic;
        DRAM_BA_0       : out    vl_logic;
        DRAM_BA_1       : out    vl_logic;
        DRAM_LDQM       : out    vl_logic;
        DRAM_UDQM       : out    vl_logic;
        DRAM_WE_N       : out    vl_logic;
        DRAM_CAS_N      : out    vl_logic;
        DRAM_RAS_N      : out    vl_logic;
        DRAM_CS_N       : out    vl_logic;
        DRAM_CLK        : out    vl_logic;
        DRAM_CKE        : out    vl_logic;
        \7SEG\          : out    vl_logic_vector(31 downto 0);
        DRAM_ADDR       : out    vl_logic_vector(11 downto 0);
        LED             : out    vl_logic_vector(9 downto 0);
        VGA_B           : out    vl_logic_vector(3 downto 0);
        VGA_G           : out    vl_logic_vector(3 downto 0);
        VGA_R           : out    vl_logic_vector(3 downto 0)
    );
end ARP;
