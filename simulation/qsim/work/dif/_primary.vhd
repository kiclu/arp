library verilog;
use verilog.vl_types.all;
entity dif is
    port(
        VGA_VS          : out    vl_logic;
        CLK             : in     vl_logic;
        VGA_HS          : out    vl_logic;
        VGA_B           : out    vl_logic_vector(3 downto 0);
        VGA_G           : out    vl_logic_vector(3 downto 0);
        vga_i           : out    vl_logic_vector(10 downto 0);
        vga_j           : out    vl_logic_vector(9 downto 0);
        VGA_R           : out    vl_logic_vector(3 downto 0)
    );
end dif;
