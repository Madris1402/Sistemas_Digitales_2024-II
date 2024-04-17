library verilog;
use verilog.vl_types.all;
entity seqdiv is
    port(
        ck              : in     vl_logic;
        sQ              : out    vl_logic_vector(9 downto 0)
    );
end seqdiv;
