library verilog;
use verilog.vl_types.all;
entity flipflopJK_negedge is
    port(
        Q               : out    vl_logic;
        CLK             : in     vl_logic;
        E1              : in     vl_logic;
        Q1              : out    vl_logic;
        J               : out    vl_logic;
        K               : out    vl_logic;
        J1              : out    vl_logic;
        Q2              : out    vl_logic;
        K1              : out    vl_logic
    );
end flipflopJK_negedge;
