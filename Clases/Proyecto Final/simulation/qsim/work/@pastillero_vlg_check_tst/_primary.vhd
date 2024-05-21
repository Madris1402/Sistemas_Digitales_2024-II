library verilog;
use verilog.vl_types.all;
entity Pastillero_vlg_check_tst is
    port(
        AB              : in     vl_logic_vector(3 downto 0);
        E               : in     vl_logic_vector(10 downto 0);
        sampler_rx      : in     vl_logic
    );
end Pastillero_vlg_check_tst;
