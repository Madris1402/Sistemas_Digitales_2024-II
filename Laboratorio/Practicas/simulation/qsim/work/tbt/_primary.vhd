library verilog;
use verilog.vl_types.all;
entity tbt is
    port(
        ck              : in     vl_logic;
        sT              : in     vl_logic;
        f               : in     vl_logic;
        ckd             : out    vl_logic
    );
end tbt;
