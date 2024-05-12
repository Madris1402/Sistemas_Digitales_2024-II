library verilog;
use verilog.vl_types.all;
entity lsr_vlg_sample_tst is
    port(
        er              : in     vl_logic;
        es              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lsr_vlg_sample_tst;
