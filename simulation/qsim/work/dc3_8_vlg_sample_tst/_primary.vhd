library verilog;
use verilog.vl_types.all;
entity dc3_8_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(2 downto 0);
        E               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dc3_8_vlg_sample_tst;
