library verilog;
use verilog.vl_types.all;
entity cascada_JK_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        E1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cascada_JK_vlg_sample_tst;
