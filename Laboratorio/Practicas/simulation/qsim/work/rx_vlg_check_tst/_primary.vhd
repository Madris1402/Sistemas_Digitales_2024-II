library verilog;
use verilog.vl_types.all;
entity rx_vlg_check_tst is
    port(
        MF              : in     vl_logic;
        Mckd            : in     vl_logic;
        Mrc             : in     vl_logic_vector(9 downto 0);
        dat             : in     vl_logic_vector(7 downto 0);
        stb             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end rx_vlg_check_tst;
