library verilog;
use verilog.vl_types.all;
entity maquina_estados is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        output1         : out    vl_logic;
        output2         : out    vl_logic;
        output3         : out    vl_logic
    );
end maquina_estados;
