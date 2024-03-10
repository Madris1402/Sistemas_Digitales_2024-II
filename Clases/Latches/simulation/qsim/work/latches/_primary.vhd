library verilog;
use verilog.vl_types.all;
entity latches is
    port(
        Q1LatchNAND     : out    vl_logic;
        S2              : in     vl_logic;
        R2              : in     vl_logic;
        Q2LatchNAND     : out    vl_logic;
        Q1LatchNOR      : out    vl_logic;
        S1              : in     vl_logic;
        R1              : in     vl_logic;
        Q2LatchNOR      : out    vl_logic;
        Q1LatchEN       : out    vl_logic;
        S3              : in     vl_logic;
        EN1             : in     vl_logic;
        R3              : in     vl_logic;
        Q2LatchEN       : out    vl_logic;
        Q1LatchD        : out    vl_logic;
        D               : in     vl_logic;
        EN2             : in     vl_logic;
        Q2LatchD        : out    vl_logic;
        R2N             : out    vl_logic;
        S2N             : out    vl_logic
    );
end latches;
