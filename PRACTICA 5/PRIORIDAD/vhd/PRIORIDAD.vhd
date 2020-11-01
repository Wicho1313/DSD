
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: PRIORIDAD.vhd

--    Date: Thu Nov 15 10:58:34 2018

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-25PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY prioridad IS
    PORT (
	                 num :    in std_logic_vector (8 downto 0) ;
	                 cod : inout std_logic_vector (3 downto 0)
    );
END prioridad;

-- End of Test Bench Header

ARCHITECTURE DSMB of prioridad is

	signal jed_node1	: std_logic:='0' ; -- num(8)
	signal jed_node2	: std_logic:='0' ; -- num(7)
	signal jed_node3	: std_logic:='0' ; -- num(6)
	signal jed_node4	: std_logic:='0' ; -- num(5)
	signal jed_node5	: std_logic:='0' ; -- num(4)
	signal jed_node6	: std_logic:='0' ; -- num(3)
	signal jed_node7	: std_logic:='0' ; -- num(2)
	signal jed_node8	: std_logic:='0' ; -- num(1)
	signal jed_node9	: std_logic:='0' ; -- num(0)
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node16	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node18	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node21	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of num(8):SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of num(7):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of num(6):SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of num(5):SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of num(4):SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of num(3):SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of num(2):SIGNAL is "0007";

SIGNAL  jed_oept_8:std_logic:='0';
--Attribute PIN_NUMBERS of num(1):SIGNAL is "0008";

SIGNAL  jed_oept_9:std_logic:='0';
--Attribute PIN_NUMBERS of num(0):SIGNAL is "0009";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of cod(0):SIGNAL is "0014";

SIGNAL  jed_oept_15:std_logic:='0';
SIGNAL  jed_sum_15,jed_fb_15:std_logic:='0';
--Attribute PIN_NUMBERS of cod(2):SIGNAL is "0015";

SIGNAL  jed_oept_22:std_logic:='0';
SIGNAL  jed_sum_22,jed_fb_22:std_logic:='0';
--Attribute PIN_NUMBERS of cod(3):SIGNAL is "0022";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of cod(1):SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= num(8) ;
jed_node2 <= num(7) ;
jed_node3 <= num(6) ;
jed_node4 <= num(5) ;
jed_node5 <= num(4) ;
jed_node6 <= num(3) ;
jed_node7 <= num(2) ;
jed_node8 <= num(1) ;
jed_node9 <= num(0) ;
Mcell_14:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_14,
     clk=>jed_node1,
     oe=>jed_oept_14,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>cod(0),
     fb=>jed_fb_14
   );

Mcell_15:c22v10m
generic map(comb,
   invt,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_15,
     clk=>jed_node1,
     oe=>jed_oept_15,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>cod(2),
     fb=>jed_fb_15
   );

Mcell_22:c22v10m
generic map(comb,
   invt,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_22,
     clk=>jed_node1,
     oe=>jed_oept_22,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>cod(3),
     fb=>jed_fb_22
   );

Mcell_23:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_23,
     clk=>jed_node1,
     oe=>jed_oept_23,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>cod(1),
     fb=>jed_fb_23
   );

jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_14<=(one);

jed_sum_14<= ((not(jed_node2) and not(jed_node4) and not(jed_node6)
 and not(jed_node8) and (jed_node9)) or
(not(jed_node2) and not(jed_node4) and not(jed_node6)
 and (jed_node7)) or
(not(jed_node2) and not(jed_node4) and (jed_node5)) or
(not(jed_node2) and (jed_node3)) or
((jed_node1)));

jed_oept_15<=(one);

jed_sum_15<= ((not(jed_node3) and not(jed_node4) and not(jed_node5)
 and not(jed_node6)) or
((jed_node1)) or
((jed_node2)));

jed_oept_22<=(one);

jed_sum_22<= ((not(jed_node1) and not(jed_node2)));

jed_oept_23<=(one);

jed_sum_23<= ((not(jed_node1) and not(jed_node2) and not(jed_node5)
 and not(jed_node6) and (jed_node7)) or
(not(jed_node1) and not(jed_node2) and not(jed_node5)
 and not(jed_node6) and (jed_node8)) or
(not(jed_node1) and not(jed_node2) and (jed_node3)) or
(not(jed_node1) and not(jed_node2) and (jed_node4)));

end DSMB;
