library verilog;
use verilog.vl_types.all;
entity shft16l32_vlg_check_tst is
    port(
        X               : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end shft16l32_vlg_check_tst;
