library verilog;
use verilog.vl_types.all;
entity dif_vlg_check_tst is
    port(
        VGA_B           : in     vl_logic_vector(3 downto 0);
        VGA_G           : in     vl_logic_vector(3 downto 0);
        VGA_HS          : in     vl_logic;
        vga_i           : in     vl_logic_vector(10 downto 0);
        vga_j           : in     vl_logic_vector(9 downto 0);
        VGA_R           : in     vl_logic_vector(3 downto 0);
        VGA_VS          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end dif_vlg_check_tst;
