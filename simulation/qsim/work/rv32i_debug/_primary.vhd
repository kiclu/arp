library verilog;
use verilog.vl_types.all;
entity rv32i_debug is
    port(
        RD              : out    vl_logic;
        CLK             : in     vl_logic;
        DBUS            : inout  vl_logic_vector(31 downto 0);
        WR              : out    vl_logic;
        BRANCH          : out    vl_logic;
        JAL             : out    vl_logic;
        JALR            : out    vl_logic;
        LD_PC           : out    vl_logic;
        BRC             : out    vl_logic;
        LD_IR           : out    vl_logic;
        LD_REG          : out    vl_logic;
        ABUS            : out    vl_logic_vector(31 downto 0);
        ADDR            : out    vl_logic_vector(31 downto 0);
        ALUOUT          : out    vl_logic_vector(31 downto 0);
        DATA            : out    vl_logic_vector(31 downto 0);
        DATA_REG        : out    vl_logic_vector(31 downto 0);
        IR              : out    vl_logic_vector(31 downto 0);
        LEN             : out    vl_logic_vector(1 downto 0);
        PC              : out    vl_logic_vector(31 downto 0)
    );
end rv32i_debug;
