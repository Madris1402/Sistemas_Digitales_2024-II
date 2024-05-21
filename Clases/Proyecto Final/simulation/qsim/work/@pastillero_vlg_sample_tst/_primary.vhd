library verilog;
use verilog.vl_types.all;
entity Pastillero_vlg_sample_tst is
    port(
        RST             : in     vl_logic;
        clk             : in     vl_logic;
        w               : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Pastillero_vlg_sample_tst;
