library verilog;
use verilog.vl_types.all;
entity pc is
    port(
        offs            : out    vl_logic_vector(12 downto 0);
        IR              : in     vl_logic_vector(31 downto 0);
        offs_signext    : out    vl_logic_vector(31 downto 0);
        PC              : out    vl_logic_vector(31 downto 0);
        LD              : in     vl_logic;
        CLK             : in     vl_logic;
        rs1             : in     vl_logic_vector(31 downto 0);
        brc             : in     vl_logic;
        BRANCH          : in     vl_logic;
        JAL             : in     vl_logic;
        JALR            : in     vl_logic;
        pc_branch       : out    vl_logic_vector(31 downto 0)
    );
end pc;
