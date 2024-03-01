library verilog;
use verilog.vl_types.all;
entity contador is
    port(
        A               : out    vl_logic;
        Entrada         : in     vl_logic;
        CLK             : in     vl_logic;
        B               : out    vl_logic;
        C               : out    vl_logic
    );
end contador;
