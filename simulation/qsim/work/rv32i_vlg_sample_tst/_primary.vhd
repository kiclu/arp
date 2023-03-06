library verilog;
use verilog.vl_types.all;
entity rv32i_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DBUS            : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end rv32i_vlg_sample_tst;
