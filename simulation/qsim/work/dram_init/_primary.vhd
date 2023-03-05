library verilog;
use verilog.vl_types.all;
entity dram_init is
    port(
        PRECHARGE       : out    vl_logic;
        CLK             : in     vl_logic;
        AUTO_REFRESH    : out    vl_logic;
        LOAD_MODE_REGISTER: out    vl_logic;
        init_done       : out    vl_logic;
        init_end        : out    vl_logic;
        A               : out    vl_logic_vector(11 downto 0);
        CNT             : out    vl_logic_vector(12 downto 0)
    );
end dram_init;
