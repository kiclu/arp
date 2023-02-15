library verilog;
use verilog.vl_types.all;
entity vga_hfp_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(10 downto 0);
        sampler_tx      : out    vl_logic
    );
end vga_hfp_vlg_sample_tst;
