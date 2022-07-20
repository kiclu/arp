library verilog;
use verilog.vl_types.all;
entity toplevel is
    port(
        VGA_HS          : out    vl_logic;
        CLK             : in     vl_logic;
        VGA_VS          : out    vl_logic;
        VGA_B           : out    vl_logic_vector(3 downto 0);
        VGA_G           : out    vl_logic_vector(3 downto 0);
        VGA_R           : out    vl_logic_vector(3 downto 0)
    );
end toplevel;
