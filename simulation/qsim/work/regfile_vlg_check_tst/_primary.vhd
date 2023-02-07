library verilog;
use verilog.vl_types.all;
entity regfile_vlg_check_tst is
    port(
        DATAOUT1        : in     vl_logic_vector(31 downto 0);
        DATAOUT2        : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end regfile_vlg_check_tst;
