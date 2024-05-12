library verilog;
use verilog.vl_types.all;
entity tbt_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        f               : in     vl_logic;
        sT              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tbt_vlg_sample_tst;
