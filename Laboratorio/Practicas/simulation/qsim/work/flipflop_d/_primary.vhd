library verilog;
use verilog.vl_types.all;
entity flipflop_d is
    port(
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(16 downto 0);
        sQ              : out    vl_logic_vector(16 downto 0)
    );
end flipflop_d;
