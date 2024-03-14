library verilog;
use verilog.vl_types.all;
entity cascada_JK_vlg_check_tst is
    port(
        CLK2            : in     vl_logic;
        Q               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end cascada_JK_vlg_check_tst;
