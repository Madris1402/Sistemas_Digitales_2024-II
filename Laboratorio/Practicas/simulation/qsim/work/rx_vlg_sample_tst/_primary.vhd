library verilog;
use verilog.vl_types.all;
entity rx_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        rx              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end rx_vlg_sample_tst;
