library verilog;
use verilog.vl_types.all;
entity flipflopJK_negedge is
    port(
        Q1              : out    vl_logic;
        CLK             : in     vl_logic;
        K0              : in     vl_logic;
        J0              : in     vl_logic;
        Q2              : out    vl_logic;
        K1              : in     vl_logic;
        J1              : in     vl_logic;
        Q3              : out    vl_logic;
        Q0              : out    vl_logic
    );
end flipflopJK_negedge;
