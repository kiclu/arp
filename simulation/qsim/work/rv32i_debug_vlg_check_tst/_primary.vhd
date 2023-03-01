library verilog;
use verilog.vl_types.all;
entity rv32i_debug_vlg_check_tst is
    port(
        ABUS            : in     vl_logic_vector(31 downto 0);
        ALU_A           : in     vl_logic_vector(31 downto 0);
        ALU_B           : in     vl_logic_vector(31 downto 0);
        ALUOUT          : in     vl_logic_vector(31 downto 0);
        base            : in     vl_logic_vector(31 downto 0);
        BRANCH          : in     vl_logic;
        BRC             : in     vl_logic;
        DATA            : in     vl_logic_vector(31 downto 0);
        DBUS            : in     vl_logic_vector(31 downto 0);
        IR              : in     vl_logic_vector(31 downto 0);
        JAL             : in     vl_logic;
        JALR            : in     vl_logic;
        LD_PC           : in     vl_logic;
        LEN             : in     vl_logic_vector(1 downto 0);
        offs            : in     vl_logic_vector(11 downto 0);
        PC              : in     vl_logic_vector(31 downto 0);
        RD              : in     vl_logic;
        rL              : in     vl_logic_vector(4 downto 0);
        rR              : in     vl_logic_vector(4 downto 0);
        WR              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end rv32i_debug_vlg_check_tst;
