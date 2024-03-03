library verilog;
use verilog.vl_types.all;
entity flipflop_T is
    port(
        Q1              : out    vl_logic;
        CLK             : in     vl_logic;
        T               : in     vl_logic;
        Q2              : out    vl_logic
    );
end flipflop_T;
