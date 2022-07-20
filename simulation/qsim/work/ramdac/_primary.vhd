library verilog;
use verilog.vl_types.all;
entity ramdac is
    port(
        VGA_VS          : out    vl_logic;
        CLK             : in     vl_logic;
        VGA_HS          : out    vl_logic;
        HDBG            : out    vl_logic_vector(15 downto 0);
        VDBG            : out    vl_logic_vector(15 downto 0);
        VGA_B           : out    vl_logic_vector(3 downto 0);
        VGA_G           : out    vl_logic_vector(3 downto 0);
        VGA_R           : out    vl_logic_vector(3 downto 0)
    );
end ramdac;
