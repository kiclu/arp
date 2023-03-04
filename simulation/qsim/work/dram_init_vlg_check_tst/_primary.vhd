library verilog;
use verilog.vl_types.all;
entity dram_init_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(11 downto 0);
        AUTO_REFRESH    : in     vl_logic;
        CNT             : in     vl_logic_vector(12 downto 0);
        init_done       : in     vl_logic;
        init_end        : in     vl_logic;
        LOAD_MODE_REGISTER: in     vl_logic;
        PRECHARGE       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end dram_init_vlg_check_tst;
