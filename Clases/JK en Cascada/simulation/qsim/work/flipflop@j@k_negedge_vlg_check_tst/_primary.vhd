library verilog;
use verilog.vl_types.all;
entity flipflopJK_negedge_vlg_check_tst is
    port(
        J               : in     vl_logic;
        J1              : in     vl_logic;
        K               : in     vl_logic;
        K1              : in     vl_logic;
        Q               : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end flipflopJK_negedge_vlg_check_tst;
