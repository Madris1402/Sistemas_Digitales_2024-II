library verilog;
use verilog.vl_types.all;
entity contador_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Entrada         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_vlg_sample_tst;
