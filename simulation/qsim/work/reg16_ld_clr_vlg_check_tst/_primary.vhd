library verilog;
use verilog.vl_types.all;
entity reg16_ld_clr_vlg_check_tst is
    port(
        DOUT            : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end reg16_ld_clr_vlg_check_tst;
