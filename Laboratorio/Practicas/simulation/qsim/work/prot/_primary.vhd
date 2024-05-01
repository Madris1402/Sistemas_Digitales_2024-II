library verilog;
use verilog.vl_types.all;
entity prot is
    port(
        ck              : in     vl_logic;
        cmd             : in     vl_logic_vector(3 downto 0);
        MF              : out    vl_logic;
        Mtbt            : out    vl_logic;
        Tx              : out    vl_logic;
        Rx              : in     vl_logic
    );
end prot;
