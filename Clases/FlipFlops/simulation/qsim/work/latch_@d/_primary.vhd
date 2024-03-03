library verilog;
use verilog.vl_types.all;
entity latch_D is
    port(
        Q1              : out    vl_logic;
        D               : in     vl_logic;
        Q2              : out    vl_logic
    );
end latch_D;
