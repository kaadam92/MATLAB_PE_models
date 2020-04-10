clear all;

U_in = 50;
U_out = 20;

I_out = 2;
P_pout = U_out * I_out;

delta_U_out = 0.01;
delta_I_out = 0.1

R_load = U_out/I_out;

duty = U_out/U_in;
f_sw = 10e3;

L_min = (1-duty)*R_load/(2*f_sw*delta_I_out);
C_min = (1-duty)*U_out/(8*U_out*delta_U_out*L_min*f_sw^2);

k_peak = 1;