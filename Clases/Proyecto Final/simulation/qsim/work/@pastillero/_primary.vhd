library verilog;
use verilog.vl_types.all;
entity Pastillero is
    port(
        x               : in     vl_logic;
        w               : in     vl_logic;
        y               : in     vl_logic;
        z               : in     vl_logic;
        AB              : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        RST             : in     vl_logic;
        E               : out    vl_logic_vector(10 downto 0)
    );
end Pastillero;
