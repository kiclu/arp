library verilog;
use verilog.vl_types.all;
entity gpu is
    port(
        DRAM_BA_0       : out    vl_logic;
        CLK             : in     vl_logic;
        DRAM_DQ         : inout  vl_logic_vector(15 downto 0);
        DRAM_BA_1       : out    vl_logic;
        DRAM_LDQM       : out    vl_logic;
        DRAM_UDQM       : out    vl_logic;
        DRAM_WE_N       : out    vl_logic;
        DRAM_CAS_N      : out    vl_logic;
        DRAM_RAS_N      : out    vl_logic;
        DRAM_CS_N       : out    vl_logic;
        DRAM_CLK        : out    vl_logic;
        DRAM_CKE        : out    vl_logic;
        VGA_HS          : out    vl_logic;
        VGA_VS          : out    vl_logic;
        DRAM_ADDR       : out    vl_logic_vector(11 downto 0);
        VGA_B           : out    vl_logic_vector(3 downto 0);
        VGA_G           : out    vl_logic_vector(3 downto 0);
        VGA_R           : out    vl_logic_vector(3 downto 0);
        RD              : in     vl_logic;
        WR              : in     vl_logic;
        ABUS            : in     vl_logic_vector(31 downto 0);
        DBUS            : in     vl_logic_vector(31 downto 0)
    );
end gpu;
