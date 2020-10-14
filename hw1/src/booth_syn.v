/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Wed Sep 23 22:53:44 2020
/////////////////////////////////////////////////////////////


module booth ( out, in1, in2 );
  output [11:0] out;
  input [5:0] in1;
  input [5:0] in2;
  wire   n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266;

  INVX3 U110 ( .A(in1[2]), .Y(n176) );
  OAI2BB2X1 U111 ( .B0(n258), .B1(n172), .A0N(n111), .A1N(n107), .Y(n240) );
  XNOR2X2 U112 ( .A(n74), .B(n75), .Y(out[8]) );
  OAI22X1 U113 ( .A0(n246), .A1(n247), .B0(n248), .B1(n105), .Y(n223) );
  OAI22X1 U114 ( .A0(n118), .A1(n114), .B0(n118), .B1(n117), .Y(n253) );
  XNOR2X2 U115 ( .A(n80), .B(n81), .Y(out[7]) );
  XNOR2X1 U116 ( .A(n100), .B(n176), .Y(n156) );
  NOR2X2 U117 ( .A(n121), .B(in2[3]), .Y(n100) );
  XNOR2X2 U118 ( .A(n67), .B(n68), .Y(out[9]) );
  XNOR2X2 U119 ( .A(n85), .B(n86), .Y(out[6]) );
  CLKXOR2X2 U120 ( .A(n113), .B(n114), .Y(out[1]) );
  CLKXOR2X2 U121 ( .A(n95), .B(n96), .Y(out[4]) );
  CLKXOR2X2 U122 ( .A(n107), .B(n108), .Y(out[2]) );
  XNOR2X1 U123 ( .A(n112), .B(n176), .Y(n219) );
  NOR2X2 U124 ( .A(n245), .B(in2[1]), .Y(n112) );
  OAI21X1 U125 ( .A0(n89), .A1(n88), .B0(n177), .Y(n84) );
  OAI2BB1XL U126 ( .A0N(n155), .A1N(n156), .B0(n157), .Y(n139) );
  XOR2XL U127 ( .A(n156), .B(n155), .Y(n199) );
  OAI21X1 U128 ( .A0(n200), .A1(n201), .B0(n202), .Y(n155) );
  XNOR2X2 U129 ( .A(n101), .B(n102), .Y(out[3]) );
  CLKXOR2X2 U130 ( .A(n90), .B(n91), .Y(out[5]) );
  XNOR2X2 U131 ( .A(n119), .B(n69), .Y(out[11]) );
  NOR2X2 U132 ( .A(n260), .B(n266), .Y(out[0]) );
  OAI21X1 U133 ( .A0(in2[3]), .A1(n245), .B0(n105), .Y(n104) );
  NAND2X2 U134 ( .A(in2[3]), .B(n245), .Y(n105) );
  OAI21X1 U135 ( .A0(in2[5]), .A1(n121), .B0(n94), .Y(n77) );
  NAND2X2 U136 ( .A(in2[5]), .B(n121), .Y(n94) );
  OAI21X2 U137 ( .A0(in2[1]), .A1(n260), .B0(n117), .Y(n116) );
  NAND2X2 U138 ( .A(in2[1]), .B(n260), .Y(n117) );
  BUFX2 U139 ( .A(out[11]), .Y(out[10]) );
  CLKINVX1 U140 ( .A(n69), .Y(n68) );
  NOR2X1 U141 ( .A(n70), .B(n71), .Y(n67) );
  XNOR2X1 U142 ( .A(n72), .B(n73), .Y(n71) );
  NAND2X1 U143 ( .A(n76), .B(n77), .Y(n74) );
  XOR2X1 U144 ( .A(n78), .B(n79), .Y(n76) );
  NAND2X1 U145 ( .A(n82), .B(n77), .Y(n80) );
  XOR2X1 U146 ( .A(n83), .B(n84), .Y(n82) );
  NAND2X1 U147 ( .A(n87), .B(n77), .Y(n85) );
  XOR2X1 U148 ( .A(n88), .B(n89), .Y(n87) );
  NOR2X1 U149 ( .A(n70), .B(n92), .Y(n90) );
  XOR2X1 U150 ( .A(n93), .B(n94), .Y(n92) );
  CLKINVX1 U151 ( .A(n77), .Y(n70) );
  NOR2X1 U152 ( .A(n97), .B(n98), .Y(n95) );
  XNOR2X1 U153 ( .A(n99), .B(n100), .Y(n98) );
  NAND2X1 U154 ( .A(n103), .B(n104), .Y(n101) );
  XNOR2X1 U155 ( .A(n105), .B(n106), .Y(n103) );
  NOR2X1 U156 ( .A(n109), .B(n110), .Y(n108) );
  XNOR2X1 U157 ( .A(n111), .B(n112), .Y(n110) );
  NAND2X1 U158 ( .A(n115), .B(n116), .Y(n113) );
  XOR2X1 U159 ( .A(n117), .B(n118), .Y(n115) );
  NAND2X1 U160 ( .A(n120), .B(n77), .Y(n119) );
  XOR2X1 U161 ( .A(n122), .B(n123), .Y(n120) );
  XNOR2X1 U162 ( .A(in1[5]), .B(n94), .Y(n123) );
  OAI2BB1X1 U163 ( .A0N(n72), .A1N(n73), .B0(n124), .Y(n122) );
  OAI21XL U164 ( .A0(n73), .A1(n72), .B0(n69), .Y(n124) );
  XNOR2X1 U165 ( .A(n125), .B(n126), .Y(n69) );
  NAND2X1 U166 ( .A(n127), .B(n128), .Y(n125) );
  XOR2X1 U167 ( .A(n129), .B(n130), .Y(n127) );
  XNOR2X1 U168 ( .A(in1[5]), .B(n131), .Y(n130) );
  OAI2BB1X1 U169 ( .A0N(n132), .A1N(n133), .B0(n134), .Y(n129) );
  OAI21XL U170 ( .A0(n133), .A1(n132), .B0(n126), .Y(n134) );
  XNOR2X1 U171 ( .A(n94), .B(in1[4]), .Y(n73) );
  OAI2BB1X1 U172 ( .A0N(n79), .A1N(n78), .B0(n135), .Y(n72) );
  OAI21XL U173 ( .A0(n78), .A1(n79), .B0(n75), .Y(n135) );
  XOR2X1 U174 ( .A(n126), .B(n136), .Y(n75) );
  NOR2X1 U175 ( .A(n97), .B(n137), .Y(n136) );
  XNOR2X1 U176 ( .A(n132), .B(n133), .Y(n137) );
  XNOR2X1 U177 ( .A(n100), .B(n138), .Y(n133) );
  OAI2BB1X1 U178 ( .A0N(n139), .A1N(n140), .B0(n141), .Y(n132) );
  OAI21XL U179 ( .A0(n140), .A1(n139), .B0(n142), .Y(n141) );
  XNOR2X1 U180 ( .A(n143), .B(n144), .Y(n126) );
  NAND2X1 U181 ( .A(n145), .B(n104), .Y(n143) );
  XOR2X1 U182 ( .A(n146), .B(n147), .Y(n145) );
  XNOR2X1 U183 ( .A(in1[5]), .B(n105), .Y(n147) );
  OAI2BB1X1 U184 ( .A0N(n148), .A1N(n149), .B0(n150), .Y(n146) );
  OAI21XL U185 ( .A0(n149), .A1(n148), .B0(n144), .Y(n150) );
  XOR2X1 U186 ( .A(n94), .B(n151), .Y(n78) );
  OAI2BB1X1 U187 ( .A0N(n84), .A1N(n83), .B0(n152), .Y(n79) );
  OAI21XL U188 ( .A0(n83), .A1(n84), .B0(n81), .Y(n152) );
  XOR2X1 U189 ( .A(n142), .B(n153), .Y(n81) );
  NOR2X1 U190 ( .A(n97), .B(n154), .Y(n153) );
  XNOR2X1 U191 ( .A(n139), .B(n140), .Y(n154) );
  XNOR2X1 U192 ( .A(n100), .B(n151), .Y(n140) );
  OAI21XL U193 ( .A0(n156), .A1(n155), .B0(n158), .Y(n157) );
  XOR2X1 U194 ( .A(n144), .B(n159), .Y(n142) );
  NOR2X1 U195 ( .A(n160), .B(n161), .Y(n159) );
  XNOR2X1 U196 ( .A(n148), .B(n149), .Y(n161) );
  XOR2X1 U197 ( .A(n105), .B(n138), .Y(n149) );
  OAI2BB1X1 U198 ( .A0N(n162), .A1N(n163), .B0(n164), .Y(n148) );
  OAI21XL U199 ( .A0(n163), .A1(n162), .B0(n165), .Y(n164) );
  XOR2X1 U200 ( .A(n166), .B(n167), .Y(n144) );
  NAND2X1 U201 ( .A(n168), .B(n169), .Y(n166) );
  XOR2X1 U202 ( .A(n170), .B(n171), .Y(n168) );
  XNOR2X1 U203 ( .A(in1[5]), .B(n172), .Y(n171) );
  OAI2BB2XL U204 ( .B0(n173), .B1(n167), .A0N(n174), .A1N(n175), .Y(n170) );
  NOR2X1 U205 ( .A(n175), .B(n174), .Y(n173) );
  XOR2X1 U206 ( .A(n94), .B(n176), .Y(n83) );
  OAI2BB1X1 U207 ( .A0N(n88), .A1N(n89), .B0(n86), .Y(n177) );
  XNOR2X1 U208 ( .A(n178), .B(n158), .Y(n86) );
  XOR2X1 U209 ( .A(n165), .B(n179), .Y(n158) );
  NOR2X1 U210 ( .A(n160), .B(n180), .Y(n179) );
  XNOR2X1 U211 ( .A(n162), .B(n163), .Y(n180) );
  XOR2X1 U212 ( .A(n105), .B(n151), .Y(n163) );
  OAI2BB1X1 U213 ( .A0N(n181), .A1N(n182), .B0(n183), .Y(n162) );
  OAI21XL U214 ( .A0(n182), .A1(n181), .B0(n184), .Y(n183) );
  CLKINVX1 U215 ( .A(n104), .Y(n160) );
  XNOR2X1 U216 ( .A(n167), .B(n185), .Y(n165) );
  NOR2X1 U217 ( .A(n109), .B(n186), .Y(n185) );
  XNOR2X1 U218 ( .A(n174), .B(n175), .Y(n186) );
  XNOR2X1 U219 ( .A(n112), .B(n138), .Y(n175) );
  OAI2BB1X1 U220 ( .A0N(n187), .A1N(n188), .B0(n189), .Y(n174) );
  OAI21XL U221 ( .A0(n188), .A1(n187), .B0(n190), .Y(n189) );
  XNOR2X1 U222 ( .A(n191), .B(n192), .Y(n167) );
  NAND2X1 U223 ( .A(n193), .B(n116), .Y(n191) );
  XOR2X1 U224 ( .A(n194), .B(n195), .Y(n193) );
  XNOR2X1 U225 ( .A(in1[5]), .B(n117), .Y(n195) );
  OAI2BB2XL U226 ( .B0(n196), .B1(n192), .A0N(n197), .A1N(n198), .Y(n194) );
  NOR2X1 U227 ( .A(n198), .B(n197), .Y(n196) );
  NAND2X1 U228 ( .A(n199), .B(n128), .Y(n178) );
  OAI2BB1X1 U229 ( .A0N(n201), .A1N(n200), .B0(n203), .Y(n202) );
  XOR2X1 U230 ( .A(n94), .B(in1[1]), .Y(n88) );
  AOI2BB2X1 U231 ( .B0(n93), .B1(n91), .A0N(n204), .A1N(n94), .Y(n89) );
  NOR2X1 U232 ( .A(n91), .B(n93), .Y(n204) );
  XNOR2X1 U233 ( .A(n205), .B(n203), .Y(n91) );
  XNOR2X1 U234 ( .A(n206), .B(n184), .Y(n203) );
  XNOR2X1 U235 ( .A(n207), .B(n190), .Y(n184) );
  XOR2X1 U236 ( .A(n208), .B(n192), .Y(n190) );
  NAND2X1 U237 ( .A(n209), .B(in2[0]), .Y(n192) );
  XOR2X1 U238 ( .A(n210), .B(in1[5]), .Y(n209) );
  NAND2X1 U239 ( .A(n211), .B(n138), .Y(n210) );
  NAND2X1 U240 ( .A(n212), .B(n116), .Y(n208) );
  XOR2X1 U241 ( .A(n198), .B(n197), .Y(n212) );
  OAI2BB1X1 U242 ( .A0N(n213), .A1N(n214), .B0(n215), .Y(n197) );
  OAI21XL U243 ( .A0(n214), .A1(n213), .B0(n216), .Y(n215) );
  XOR2X1 U244 ( .A(n117), .B(n138), .Y(n198) );
  CLKINVX1 U245 ( .A(in1[4]), .Y(n138) );
  NAND2X1 U246 ( .A(n217), .B(n169), .Y(n207) );
  XOR2X1 U247 ( .A(n188), .B(n187), .Y(n217) );
  OAI2BB1X1 U248 ( .A0N(n218), .A1N(n219), .B0(n220), .Y(n187) );
  OAI21XL U249 ( .A0(n219), .A1(n218), .B0(n221), .Y(n220) );
  XNOR2X1 U250 ( .A(n112), .B(n151), .Y(n188) );
  NAND2X1 U251 ( .A(n222), .B(n104), .Y(n206) );
  XOR2X1 U252 ( .A(n182), .B(n181), .Y(n222) );
  OAI2BB1X1 U253 ( .A0N(n223), .A1N(n224), .B0(n225), .Y(n181) );
  OAI21XL U254 ( .A0(n224), .A1(n223), .B0(n226), .Y(n225) );
  XOR2X1 U255 ( .A(n105), .B(n176), .Y(n182) );
  NAND2X1 U256 ( .A(n227), .B(n128), .Y(n205) );
  CLKINVX1 U257 ( .A(n97), .Y(n128) );
  AOI21X1 U258 ( .A0(n121), .A1(in2[3]), .B0(n100), .Y(n97) );
  XOR2X1 U259 ( .A(n201), .B(n200), .Y(n227) );
  AOI2BB2X1 U260 ( .B0(n99), .B1(n96), .A0N(n228), .A1N(n131), .Y(n200) );
  NOR2X1 U261 ( .A(n96), .B(n99), .Y(n228) );
  XNOR2X1 U262 ( .A(n229), .B(n226), .Y(n96) );
  XNOR2X1 U263 ( .A(n230), .B(n221), .Y(n226) );
  XNOR2X1 U264 ( .A(n231), .B(n216), .Y(n221) );
  AND2X1 U265 ( .A(n232), .B(in2[0]), .Y(n216) );
  XNOR2X1 U266 ( .A(n211), .B(in1[4]), .Y(n232) );
  NOR2BX1 U267 ( .AN(n233), .B(in1[3]), .Y(n211) );
  NAND2X1 U268 ( .A(n234), .B(n116), .Y(n231) );
  XOR2X1 U269 ( .A(n214), .B(n213), .Y(n234) );
  OAI2BB1X1 U270 ( .A0N(n235), .A1N(n236), .B0(n237), .Y(n213) );
  OAI21XL U271 ( .A0(n236), .A1(n235), .B0(n238), .Y(n237) );
  XOR2X1 U272 ( .A(n117), .B(n151), .Y(n214) );
  CLKINVX1 U273 ( .A(in1[3]), .Y(n151) );
  NAND2X1 U274 ( .A(n239), .B(n169), .Y(n230) );
  XOR2X1 U275 ( .A(n219), .B(n218), .Y(n239) );
  OAI2BB1X1 U276 ( .A0N(n240), .A1N(n241), .B0(n242), .Y(n218) );
  OAI21XL U277 ( .A0(n241), .A1(n240), .B0(n243), .Y(n242) );
  NAND2X1 U278 ( .A(n244), .B(n104), .Y(n229) );
  XOR2X1 U279 ( .A(n224), .B(n223), .Y(n244) );
  NOR2X1 U280 ( .A(n102), .B(n106), .Y(n248) );
  CLKINVX1 U281 ( .A(n102), .Y(n247) );
  XNOR2X1 U282 ( .A(n249), .B(n243), .Y(n102) );
  XNOR2X1 U283 ( .A(n250), .B(n238), .Y(n243) );
  AND2X1 U284 ( .A(n251), .B(in2[0]), .Y(n238) );
  XNOR2X1 U285 ( .A(in1[3]), .B(n233), .Y(n251) );
  NOR3X1 U286 ( .A(in1[1]), .B(in1[2]), .C(in1[0]), .Y(n233) );
  NAND2X1 U287 ( .A(n252), .B(n116), .Y(n250) );
  XOR2X1 U288 ( .A(n236), .B(n235), .Y(n252) );
  OAI2BB1X1 U289 ( .A0N(n253), .A1N(n254), .B0(n255), .Y(n235) );
  OAI21XL U290 ( .A0(n254), .A1(n253), .B0(n256), .Y(n255) );
  XOR2X1 U291 ( .A(n117), .B(n176), .Y(n236) );
  NAND2X1 U292 ( .A(n257), .B(n169), .Y(n249) );
  CLKINVX1 U293 ( .A(n109), .Y(n169) );
  AOI21X1 U294 ( .A0(n245), .A1(in2[1]), .B0(n112), .Y(n109) );
  XOR2X1 U295 ( .A(n241), .B(n240), .Y(n257) );
  CLKINVX1 U296 ( .A(n112), .Y(n172) );
  NOR2X1 U297 ( .A(n107), .B(n111), .Y(n258) );
  XOR2X1 U298 ( .A(n112), .B(in1[0]), .Y(n111) );
  XNOR2X1 U299 ( .A(n259), .B(n256), .Y(n107) );
  OAI2BB2XL U300 ( .B0(n260), .B1(n261), .A0N(n176), .A1N(out[0]), .Y(n256) );
  MXI2X1 U301 ( .A(n262), .B(in1[1]), .S0(n176), .Y(n261) );
  NOR2X1 U302 ( .A(in1[1]), .B(in1[0]), .Y(n262) );
  NAND2X1 U303 ( .A(n263), .B(n116), .Y(n259) );
  XOR2X1 U304 ( .A(n254), .B(n253), .Y(n263) );
  MXI2X1 U305 ( .A(n264), .B(out[0]), .S0(n265), .Y(n114) );
  NOR2X1 U306 ( .A(in1[0]), .B(n260), .Y(n264) );
  XNOR2X1 U307 ( .A(n117), .B(n266), .Y(n118) );
  XOR2X1 U308 ( .A(n117), .B(n265), .Y(n254) );
  XNOR2X1 U309 ( .A(n112), .B(n265), .Y(n241) );
  CLKINVX1 U310 ( .A(n106), .Y(n246) );
  XOR2X1 U311 ( .A(n105), .B(n266), .Y(n106) );
  XOR2X1 U312 ( .A(n105), .B(n265), .Y(n224) );
  CLKINVX1 U313 ( .A(in1[1]), .Y(n265) );
  CLKINVX1 U314 ( .A(in2[2]), .Y(n245) );
  XNOR2X1 U315 ( .A(n100), .B(n266), .Y(n99) );
  XOR2X1 U316 ( .A(n131), .B(in1[1]), .Y(n201) );
  CLKINVX1 U317 ( .A(n100), .Y(n131) );
  XNOR2X1 U318 ( .A(n94), .B(in1[0]), .Y(n93) );
  CLKINVX1 U319 ( .A(in2[4]), .Y(n121) );
  CLKINVX1 U320 ( .A(in1[0]), .Y(n266) );
  CLKINVX1 U321 ( .A(in2[0]), .Y(n260) );
endmodule

