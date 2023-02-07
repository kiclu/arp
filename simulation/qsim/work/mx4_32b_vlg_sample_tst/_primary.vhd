library verilog;
use verilog.vl_types.all;
entity mx4_32b_vlg_sample_tst is
    port(
        I0              : in     vl_logic_vector(31 downto 0);
        I1              : in     vl_logic_vector(31 downto 0);
        I2              : in     vl_logic_vector(31 downto 0);
        I3              : in     vl_logic_vector(31 downto 0);
        S               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end mx4_32b_vlg_sample_tst;
