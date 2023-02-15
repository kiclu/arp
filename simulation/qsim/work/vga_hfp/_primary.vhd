library verilog;
use verilog.vl_types.all;
entity vga_hfp is
    port(
        vga_hfp         : out    vl_logic;
        A               : in     vl_logic_vector(10 downto 0)
    );
end vga_hfp;
