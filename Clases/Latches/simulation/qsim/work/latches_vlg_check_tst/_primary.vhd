library verilog;
use verilog.vl_types.all;
entity latches_vlg_check_tst is
    port(
        Q1LatchD        : in     vl_logic;
        Q1LatchEN       : in     vl_logic;
        Q1LatchNAND     : in     vl_logic;
        Q1LatchNOR      : in     vl_logic;
        Q2LatchD        : in     vl_logic;
        Q2LatchEN       : in     vl_logic;
        Q2LatchNAND     : in     vl_logic;
        Q2LatchNOR      : in     vl_logic;
        R2N             : in     vl_logic;
        S2N             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end latches_vlg_check_tst;
