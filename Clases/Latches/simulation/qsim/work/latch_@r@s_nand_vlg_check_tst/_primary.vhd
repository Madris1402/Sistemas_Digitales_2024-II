library verilog;
use verilog.vl_types.all;
entity latch_RS_nand_vlg_check_tst is
    port(
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end latch_RS_nand_vlg_check_tst;
