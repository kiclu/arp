library verilog;
use verilog.vl_types.all;
entity sram_controller_vlg_sample_tst is
    port(
        ABUS            : in     vl_logic_vector(31 downto 0);
        CLK             : in     vl_logic;
        DBUS            : in     vl_logic_vector(31 downto 0);
        LEN             : in     vl_logic_vector(1 downto 0);
        RD              : in     vl_logic;
        WR              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sram_controller_vlg_sample_tst;
