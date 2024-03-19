library verilog;
use verilog.vl_types.all;
entity flipflopJK_negedge_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        J0              : in     vl_logic;
        J1              : in     vl_logic;
        K0              : in     vl_logic;
        K1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end flipflopJK_negedge_vlg_sample_tst;
