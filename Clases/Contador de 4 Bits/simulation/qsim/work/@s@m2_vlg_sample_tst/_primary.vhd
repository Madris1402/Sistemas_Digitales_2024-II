library verilog;
use verilog.vl_types.all;
entity SM2_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        input1          : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SM2_vlg_sample_tst;
