library verilog;
use verilog.vl_types.all;
entity toplevel_vlg_check_tst is
    port(
        VGA_B           : in     vl_logic_vector(3 downto 0);
        VGA_G           : in     vl_logic_vector(3 downto 0);
        VGA_HS          : in     vl_logic;
        VGA_R           : in     vl_logic_vector(3 downto 0);
        VGA_VS          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end toplevel_vlg_check_tst;
