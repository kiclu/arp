library verilog;
use verilog.vl_types.all;
entity cmp32s_vlg_check_tst is
    port(
        E               : in     vl_logic;
        G               : in     vl_logic;
        L               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end cmp32s_vlg_check_tst;
