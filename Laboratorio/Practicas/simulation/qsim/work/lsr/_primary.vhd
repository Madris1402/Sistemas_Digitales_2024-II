library verilog;
use verilog.vl_types.all;
entity lsr is
    port(
        es              : in     vl_logic;
        er              : in     vl_logic;
        SQN             : out    vl_logic;
        SQ              : out    vl_logic
    );
end lsr;
