library verilog;
use verilog.vl_types.all;
entity reg32_ld_clr_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        DIN             : in     vl_logic_vector(31 downto 0);
        LD              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end reg32_ld_clr_vlg_sample_tst;
