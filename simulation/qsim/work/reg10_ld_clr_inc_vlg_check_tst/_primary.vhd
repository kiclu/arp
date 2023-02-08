library verilog;
use verilog.vl_types.all;
entity reg10_ld_clr_inc_vlg_check_tst is
    port(
        DOUT            : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end reg10_ld_clr_inc_vlg_check_tst;
