library verilog;
use verilog.vl_types.all;
entity flipflop_D is
    port(
        Q1              : out    vl_logic;
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        Q2              : out    vl_logic
    );
end flipflop_D;
