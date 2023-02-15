library verilog;
use verilog.vl_types.all;
entity reg11_ld_clr_inc_vlg_check_tst is
    port(
        DOUT            : in     vl_logic_vector(10 downto 0);
        sampler_rx      : in     vl_logic
    );
end reg11_ld_clr_inc_vlg_check_tst;
