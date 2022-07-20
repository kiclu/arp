library verilog;
use verilog.vl_types.all;
entity reg11_inc_ld_clr_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(10 downto 0);
        Cout            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end reg11_inc_ld_clr_vlg_check_tst;
