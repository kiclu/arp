library verilog;
use verilog.vl_types.all;
entity ramdac_vlg_check_tst is
    port(
        HDBG            : in     vl_logic_vector(15 downto 0);
        VDBG            : in     vl_logic_vector(15 downto 0);
        VGA_B           : in     vl_logic_vector(3 downto 0);
        VGA_G           : in     vl_logic_vector(3 downto 0);
        VGA_HS          : in     vl_logic;
        VGA_R           : in     vl_logic_vector(3 downto 0);
        VGA_VS          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ramdac_vlg_check_tst;
