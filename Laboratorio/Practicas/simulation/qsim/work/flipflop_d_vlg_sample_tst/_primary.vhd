library verilog;
use verilog.vl_types.all;
entity flipflop_d_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(16 downto 0);
        sampler_tx      : out    vl_logic
    );
end flipflop_d_vlg_sample_tst;
