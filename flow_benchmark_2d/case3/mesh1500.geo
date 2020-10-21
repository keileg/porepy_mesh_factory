
// Define points
p0 = newp; Point(p0) = {0.0, 0.0, 0.0, 0.05 };
p1 = newp; Point(p1) = {1.0, 0.0, 0.0, 0.05 };
p2 = newp; Point(p2) = {1.0, 1.0, 0.0, 0.05 };
p3 = newp; Point(p3) = {0.0, 1.0, 0.0, 0.05 };
p4 = newp; Point(p4) = {0.049999999999999996, 0.416, 0.0, 0.049999999999999996 };
p5 = newp; Point(p5) = {0.22, 0.0624, 0.0, 0.05 };
p6 = newp; Point(p6) = {0.049999999999999996, 0.27499999999999997, 0.0, 0.049999999999999996 };
p7 = newp; Point(p7) = {0.25, 0.13499999999999998, 0.0, 0.05 };
p8 = newp; Point(p8) = {0.15, 0.63, 0.0, 0.05 };
p9 = newp; Point(p9) = {0.44999999999999996, 0.09, 0.0, 0.05 };
p10 = newp; Point(p10) = {0.15, 0.9167, 0.0, 0.05 };
p11 = newp; Point(p11) = {0.39999999999999997, 0.5, 0.0, 0.05 };
p12 = newp; Point(p12) = {0.65, 0.8332999999999999, 0.0, 0.028913655652493885 };
p13 = newp; Point(p13) = {0.849723, 0.167625, 0.0, 0.05 };
p14 = newp; Point(p14) = {0.7, 0.235, 0.0, 0.05 };
p15 = newp; Point(p15) = {0.6, 0.38, 0.0, 0.05 };
p16 = newp; Point(p16) = {0.85, 0.2675, 0.0, 0.028966903413194075 };
p17 = newp; Point(p17) = {0.35, 0.9713999999999999, 0.0, 0.022806342788837745 };
p18 = newp; Point(p18) = {0.7999999999999999, 0.7142999999999999, 0.0, 0.05 };
p19 = newp; Point(p19) = {0.75, 0.9573999999999999, 0.0, 0.04260000000000008 };
p20 = newp; Point(p20) = {0.95, 0.8155, 0.0, 0.05 };
p21 = newp; Point(p21) = {0.15, 0.8362999999999999, 0.0, 0.041362981444225996 };
p22 = newp; Point(p22) = {0.39999999999999997, 0.9727, 0.0, 0.02593261519955466 };
p23 = newp; Point(p23) = {0.1521739, 0.2034783, 0.0, 0.05 };
p24 = newp; Point(p24) = {0.1863406, 0.8561274, 0.0, 0.04139764484991872 };
p25 = newp; Point(p25) = {0.8150369, 0.28323339999999997, 0.0, 0.038340034391872946 };
p26 = newp; Point(p26) = {0.6620579999999999, 0.7931109, 0.0, 0.04195901718117329 };
p27 = newp; Point(p27) = {0.3732601, 0.9581107, 0.0, 0.026788761570852783 };
p28 = newp; Point(p28) = {0.0, 0.4159999999999999, 0.0, 0.049999999999999996 };
p29 = newp; Point(p29) = {0.0, 0.2749999999999999, 0.0, 0.049999999999999996 };
p30 = newp; Point(p30) = {0.6356566164181497, 0.8081948843736002, 0.0, 0.028913655652493885 };
p31 = newp; Point(p31) = {0.35, 1.0, 0.0, 0.02860000000000007 };
p32 = newp; Point(p32) = {0.75, 1.0, 0.0, 0.04260000000000008 };
p33 = newp; Point(p33) = {0.3999999999999999, 1.0, 0.0, 0.02729999999999999 };
p34 = newp; Point(p34) = {0.175, 1.0, 0.0, 0.05 };
p35 = newp; Point(p35) = {0.575, 1.0, 0.0, 0.05 };
p36 = newp; Point(p36) = {0.73854745, 0.53817215, 0.0, 0.05 };
p37 = newp; Point(p37) = {0.83237995, 0.2254292, 0.0, 0.04559599481052572 };
p38 = newp; Point(p38) = {0.70751845, 0.3316167, 0.0, 0.05 };
p39 = newp; Point(p39) = {0.5044583582090749, 0.8831527921868001, 0.0, 0.05 };
p40 = newp; Point(p40) = {0.27980035, 0.9071190499999999, 0.0, 0.05 };
// End of point specification

// Start of specification of domain// Define lines that make up the domain boundary
bound_line_0 = newl; Line(bound_line_0) ={p0, p1};
bound_line_1 = newl; Line(bound_line_1) ={p1, p2};
bound_line_2 = newl; Line(bound_line_2) ={p2, p32};
bound_line_3 = newl; Line(bound_line_3) ={p32, p35};
bound_line_4 = newl; Line(bound_line_4) ={p35, p33};
bound_line_5 = newl; Line(bound_line_5) ={p33, p31};
bound_line_6 = newl; Line(bound_line_6) ={p31, p34};
bound_line_7 = newl; Line(bound_line_7) ={p34, p3};
bound_line_8 = newl; Line(bound_line_8) ={p3, p28};
bound_line_9 = newl; Line(bound_line_9) ={p28, p29};
bound_line_10 = newl; Line(bound_line_10) ={p29, p0};

// Line loop that makes the domain boundary
Domain_loop = newll;
Line Loop(Domain_loop) = {bound_line_0, bound_line_1, bound_line_2, bound_line_3, bound_line_4, bound_line_5, bound_line_6, bound_line_7, bound_line_8, bound_line_9, bound_line_10};
domain_surf = news;
Plane Surface(domain_surf) = {Domain_loop};
Physical Surface("DOMAIN") = {domain_surf};
// End of domain specification

// Start specification of fractures
frac_line_0 = newl; Line(frac_line_0) = {p4, p23};
Line{ frac_line_0} In Surface{domain_surf};
frac_line_1 = newl; Line(frac_line_1) = {p23, p5};
Line{ frac_line_1} In Surface{domain_surf};
Physical Line("FRACTURE_4") = { frac_line_0, frac_line_1 };

frac_line_2 = newl; Line(frac_line_2) = {p6, p23};
Line{ frac_line_2} In Surface{domain_surf};
frac_line_3 = newl; Line(frac_line_3) = {p23, p7};
Line{ frac_line_3} In Surface{domain_surf};
Physical Line("FRACTURE_5") = { frac_line_2, frac_line_3 };

frac_line_4 = newl; Line(frac_line_4) = {p8, p9};
Line{ frac_line_4} In Surface{domain_surf};
Physical Line("FRACTURE_6") = { frac_line_4 };

frac_line_5 = newl; Line(frac_line_5) = {p10, p24};
Line{ frac_line_5} In Surface{domain_surf};
frac_line_6 = newl; Line(frac_line_6) = {p24, p11};
Line{ frac_line_6} In Surface{domain_surf};
Physical Line("FRACTURE_7") = { frac_line_5, frac_line_6 };

frac_line_7 = newl; Line(frac_line_7) = {p12, p26};
Line{ frac_line_7} In Surface{domain_surf};
frac_line_8 = newl; Line(frac_line_8) = {p26, p36};
Line{ frac_line_8} In Surface{domain_surf};
frac_line_9 = newl; Line(frac_line_9) = {p36, p25};
Line{ frac_line_9} In Surface{domain_surf};
frac_line_10 = newl; Line(frac_line_10) = {p25, p37};
Line{ frac_line_10} In Surface{domain_surf};
frac_line_11 = newl; Line(frac_line_11) = {p37, p13};
Line{ frac_line_11} In Surface{domain_surf};
Physical Line("FRACTURE_8") = { frac_line_7, frac_line_8, frac_line_9, frac_line_10, frac_line_11 };

frac_line_12 = newl; Line(frac_line_12) = {p14, p13};
Line{ frac_line_12} In Surface{domain_surf};
Physical Line("FRACTURE_9") = { frac_line_12 };

frac_line_13 = newl; Line(frac_line_13) = {p15, p38};
Line{ frac_line_13} In Surface{domain_surf};
frac_line_14 = newl; Line(frac_line_14) = {p38, p25};
Line{ frac_line_14} In Surface{domain_surf};
frac_line_15 = newl; Line(frac_line_15) = {p25, p16};
Line{ frac_line_15} In Surface{domain_surf};
Physical Line("FRACTURE_10") = { frac_line_13, frac_line_14, frac_line_15 };

frac_line_16 = newl; Line(frac_line_16) = {p17, p27};
Line{ frac_line_16} In Surface{domain_surf};
frac_line_17 = newl; Line(frac_line_17) = {p27, p39};
Line{ frac_line_17} In Surface{domain_surf};
frac_line_18 = newl; Line(frac_line_18) = {p39, p30};
Line{ frac_line_18} In Surface{domain_surf};
frac_line_19 = newl; Line(frac_line_19) = {p30, p26};
Line{ frac_line_19} In Surface{domain_surf};
frac_line_20 = newl; Line(frac_line_20) = {p26, p18};
Line{ frac_line_20} In Surface{domain_surf};
Physical Line("FRACTURE_11") = { frac_line_16, frac_line_17, frac_line_18, frac_line_19, frac_line_20 };

frac_line_21 = newl; Line(frac_line_21) = {p19, p20};
Line{ frac_line_21} In Surface{domain_surf};
Physical Line("FRACTURE_12") = { frac_line_21 };

frac_line_22 = newl; Line(frac_line_22) = {p21, p24};
Line{ frac_line_22} In Surface{domain_surf};
frac_line_23 = newl; Line(frac_line_23) = {p24, p40};
Line{ frac_line_23} In Surface{domain_surf};
frac_line_24 = newl; Line(frac_line_24) = {p40, p27};
Line{ frac_line_24} In Surface{domain_surf};
frac_line_25 = newl; Line(frac_line_25) = {p27, p22};
Line{ frac_line_25} In Surface{domain_surf};
Physical Line("FRACTURE_13") = { frac_line_22, frac_line_23, frac_line_24, frac_line_25 };

// End of fracture specification

// Start physical point specification
Physical Point("FRACTURE_POINT_0") = {p13};
Physical Point("FRACTURE_POINT_1") = {p23};
Physical Point("FRACTURE_POINT_2") = {p24};
Physical Point("FRACTURE_POINT_3") = {p25};
Physical Point("FRACTURE_POINT_4") = {p26};
Physical Point("FRACTURE_POINT_5") = {p27};
// End of physical point specification

