library verilog;
use verilog.vl_types.all;
entity prot_vlg_check_tst is
    port(
        MF              : in     vl_logic;
        Mtbt            : in     vl_logic;
        Tx              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end prot_vlg_check_tst;
