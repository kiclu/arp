library verilog;
use verilog.vl_types.all;
entity gpu_vlg_check_tst is
    port(
        DRAM_ADDR       : in     vl_logic_vector(11 downto 0);
        DRAM_BA_0       : in     vl_logic;
        DRAM_BA_1       : in     vl_logic;
        DRAM_CAS_N      : in     vl_logic;
        DRAM_CKE        : in     vl_logic;
        DRAM_CLK        : in     vl_logic;
        DRAM_CS_N       : in     vl_logic;
        DRAM_DQ         : in     vl_logic_vector(15 downto 0);
        DRAM_LDQM       : in     vl_logic;
        DRAM_RAS_N      : in     vl_logic;
        DRAM_UDQM       : in     vl_logic;
        DRAM_WE_N       : in     vl_logic;
        VGA_B           : in     vl_logic_vector(3 downto 0);
        VGA_G           : in     vl_logic_vector(3 downto 0);
        VGA_HS          : in     vl_logic;
        VGA_R           : in     vl_logic_vector(3 downto 0);
        VGA_VS          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end gpu_vlg_check_tst;
