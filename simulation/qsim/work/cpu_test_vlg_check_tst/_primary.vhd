library verilog;
use verilog.vl_types.all;
entity cpu_test_vlg_check_tst is
    port(
        DIN             : in     vl_logic_vector(31 downto 0);
        DOUT1           : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end cpu_test_vlg_check_tst;
