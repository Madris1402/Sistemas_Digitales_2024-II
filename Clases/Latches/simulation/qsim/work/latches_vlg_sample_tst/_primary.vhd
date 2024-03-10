library verilog;
use verilog.vl_types.all;
entity latches_vlg_sample_tst is
    port(
        D               : in     vl_logic;
        EN1             : in     vl_logic;
        EN2             : in     vl_logic;
        R1              : in     vl_logic;
        R2              : in     vl_logic;
        R3              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        S3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end latches_vlg_sample_tst;
