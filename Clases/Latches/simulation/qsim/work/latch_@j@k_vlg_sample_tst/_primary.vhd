library verilog;
use verilog.vl_types.all;
entity latch_JK_vlg_sample_tst is
    port(
        J               : in     vl_logic;
        K               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end latch_JK_vlg_sample_tst;
