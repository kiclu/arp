library verilog;
use verilog.vl_types.all;
entity reg8_ld_clr_vlg_check_tst is
    port(
        DOUT            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end reg8_ld_clr_vlg_check_tst;
