library verilog;
use verilog.vl_types.all;
entity cascada_JK is
    port(
        CLK2            : out    vl_logic;
        CLK             : in     vl_logic;
        E1              : in     vl_logic;
        Q               : out    vl_logic
    );
end cascada_JK;
