library verilog;
use verilog.vl_types.all;
entity latch_JK is
    port(
        Q1              : out    vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        Q2              : out    vl_logic
    );
end latch_JK;
