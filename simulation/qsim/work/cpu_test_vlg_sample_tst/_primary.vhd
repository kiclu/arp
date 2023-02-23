library verilog;
use verilog.vl_types.all;
entity cpu_test_vlg_sample_tst is
    port(
        ADDRIN          : in     vl_logic_vector(4 downto 0);
        ADDROUT1        : in     vl_logic_vector(4 downto 0);
        ADDROUT2        : in     vl_logic_vector(4 downto 0);
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        DATAIN          : in     vl_logic_vector(31 downto 0);
        func3           : in     vl_logic_vector(2 downto 0);
        func7           : in     vl_logic_vector(6 downto 0);
        LD              : in     vl_logic;
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cpu_test_vlg_sample_tst;
