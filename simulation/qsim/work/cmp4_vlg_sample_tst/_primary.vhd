library verilog;
use verilog.vl_types.all;
entity cmp4_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        E0              : in     vl_logic;
        G0              : in     vl_logic;
        L0              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cmp4_vlg_sample_tst;
