library verilog;
use verilog.vl_types.all;
entity latch_D_vlg_sample_tst is
    port(
        D               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end latch_D_vlg_sample_tst;
