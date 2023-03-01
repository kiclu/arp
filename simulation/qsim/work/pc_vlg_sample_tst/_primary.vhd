library verilog;
use verilog.vl_types.all;
entity pc_vlg_sample_tst is
    port(
        BRANCH          : in     vl_logic;
        brc             : in     vl_logic;
        CLK             : in     vl_logic;
        IR              : in     vl_logic_vector(31 downto 0);
        JAL             : in     vl_logic;
        JALR            : in     vl_logic;
        LD              : in     vl_logic;
        rs1             : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end pc_vlg_sample_tst;
