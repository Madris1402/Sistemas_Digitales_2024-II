library verilog;
use verilog.vl_types.all;
entity contador is
    port(
        clk             : in     vl_logic;
        sQ              : out    vl_logic_vector(16 downto 0)
    );
end contador;
