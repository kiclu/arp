library verilog;
use verilog.vl_types.all;
entity dif_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dif_vlg_sample_tst;
