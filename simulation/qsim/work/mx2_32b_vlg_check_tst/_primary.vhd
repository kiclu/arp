library verilog;
use verilog.vl_types.all;
entity mx2_32b_vlg_check_tst is
    port(
        O               : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end mx2_32b_vlg_check_tst;
