library verilog;
use verilog.vl_types.all;
entity flipflop_T_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end flipflop_T_vlg_sample_tst;
