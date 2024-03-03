library verilog;
use verilog.vl_types.all;
entity latch_RS_nandEN_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end latch_RS_nandEN_vlg_sample_tst;
