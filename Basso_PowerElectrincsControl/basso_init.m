clear;
clc;

V_in = 10;
D_0 = 0.583;
Vout0 = V_in/(1-D_0);
R_load = 240;
L = 1e-3;
C = 100e-6;
f_sw = 100e3;

D_1 = 0.59;
Vout1 = V_in/(1-D_1);