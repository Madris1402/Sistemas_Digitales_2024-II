library verilog;
use verilog.vl_types.all;
entity seqdiv_vlg_check_tst is
    port(
        sQ              : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end seqdiv_vlg_check_tst;
