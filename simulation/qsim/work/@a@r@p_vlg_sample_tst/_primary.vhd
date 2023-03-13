library verilog;
use verilog.vl_types.all;
entity ARP_vlg_sample_tst is
    port(
        BTN             : in     vl_logic_vector(2 downto 0);
        CLK             : in     vl_logic;
        DRAM_DQ         : in     vl_logic_vector(15 downto 0);
        PS2_KBCLK       : in     vl_logic;
        PS2_KBDAT       : in     vl_logic;
        SW              : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end ARP_vlg_sample_tst;
