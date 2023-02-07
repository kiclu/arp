library verilog;
use verilog.vl_types.all;
entity regfile_vlg_sample_tst is
    port(
        ADDRIN          : in     vl_logic_vector(4 downto 0);
        ADDROUT1        : in     vl_logic_vector(4 downto 0);
        ADDROUT2        : in     vl_logic_vector(4 downto 0);
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        DATAIN          : in     vl_logic_vector(31 downto 0);
        LD              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end regfile_vlg_sample_tst;
