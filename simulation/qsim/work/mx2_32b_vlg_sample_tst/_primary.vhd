library verilog;
use verilog.vl_types.all;
entity mx2_32b_vlg_sample_tst is
    port(
        I0              : in     vl_logic_vector(31 downto 0);
        I1              : in     vl_logic_vector(31 downto 0);
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mx2_32b_vlg_sample_tst;
