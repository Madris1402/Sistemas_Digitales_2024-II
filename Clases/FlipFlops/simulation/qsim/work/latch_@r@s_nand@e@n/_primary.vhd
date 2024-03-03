library verilog;
use verilog.vl_types.all;
entity latch_RS_nandEN is
    port(
        Q1              : out    vl_logic;
        CLK             : in     vl_logic;
        S               : in     vl_logic;
        R               : in     vl_logic;
        Q2              : out    vl_logic
    );
end latch_RS_nandEN;
