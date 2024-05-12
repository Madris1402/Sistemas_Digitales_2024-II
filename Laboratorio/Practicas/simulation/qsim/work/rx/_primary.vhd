library verilog;
use verilog.vl_types.all;
entity rx is
    port(
        ck              : in     vl_logic;
        rx              : in     vl_logic;
        MF              : out    vl_logic;
        Mckd            : out    vl_logic;
        Mrc             : out    vl_logic_vector(9 downto 0);
        dat             : out    vl_logic_vector(7 downto 0);
        stb             : out    vl_logic
    );
end rx;
