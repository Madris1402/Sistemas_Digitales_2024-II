library verilog;
use verilog.vl_types.all;
entity prot_vlg_sample_tst is
    port(
        Rx              : in     vl_logic;
        ck              : in     vl_logic;
        cmd             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end prot_vlg_sample_tst;
