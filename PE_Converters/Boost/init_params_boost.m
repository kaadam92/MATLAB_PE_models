clear all;

U_in = 50;
U_out = 80;

I_out = 2;
P_pout = U_out * I_out;

delta_U_out = 0.01;
delta_I_out = 0.1

R_load = U_out/I_out;

duty =1-(U_in/U_out)
f_sw = 10e3;

L_min = ((1-duty)^2*duty*R_load)/(2*f_sw);
C_min = (duty)*U_out/(U_out*delta_U_out*R_load*f_sw);

k_peak = 1;