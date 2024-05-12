library verilog;
use verilog.vl_types.all;
entity lsr_vlg_check_tst is
    port(
        SQ              : in     vl_logic;
        SQN             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lsr_vlg_check_tst;
