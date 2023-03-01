library verilog;
use verilog.vl_types.all;
entity pc_vlg_check_tst is
    port(
        offs            : in     vl_logic_vector(12 downto 0);
        offs_signext    : in     vl_logic_vector(31 downto 0);
        PC              : in     vl_logic_vector(31 downto 0);
        pc_branch       : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end pc_vlg_check_tst;
