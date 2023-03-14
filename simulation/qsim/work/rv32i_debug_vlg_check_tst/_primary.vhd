library verilog;
use verilog.vl_types.all;
entity rv32i_debug_vlg_check_tst is
    port(
        ABUS            : in     vl_logic_vector(31 downto 0);
        ADDR            : in     vl_logic_vector(31 downto 0);
        ALUOUT          : in     vl_logic_vector(31 downto 0);
        BRANCH          : in     vl_logic;
        BRC             : in     vl_logic;
        DATA            : in     vl_logic_vector(31 downto 0);
        DATA_REG        : in     vl_logic_vector(31 downto 0);
        DBUS            : in     vl_logic_vector(31 downto 0);
        IR              : in     vl_logic_vector(31 downto 0);
        JAL             : in     vl_logic;
        JALR            : in     vl_logic;
        LD_IR           : in     vl_logic;
        LD_PC           : in     vl_logic;
        LD_REG          : in     vl_logic;
        LEN             : in     vl_logic_vector(1 downto 0);
        PC              : in     vl_logic_vector(31 downto 0);
        RD              : in     vl_logic;
        WR              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end rv32i_debug_vlg_check_tst;
