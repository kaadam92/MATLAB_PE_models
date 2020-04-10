clear
% Nominal values
Iki_n=10;
xref_n=10;
% Controlled system (plant)
R=0.1;
L=1e-3;
U_dc=150;
Uout=75;
Rload=Uout/Iki_n;
C=1000e-6;
% % Sensor
Ki=xref_n/Iki_n; 
tau_Ki=2e-6 ;
% Controller
% % Dead band controller
x_err_max=1;
% % PWM
fs=20e3;
% % PCMC
duty_min=0.02;
duty_max=0.98;
k_peak=10; % Comparator triangular signal peak
Tr=L*k_peak/(U_dc*Ki);
Td=1/(2*fs)+tau_Ki;
fi_t=pi/3;
wc=1/Td*2/3*(pi/2-fi_t);
Ap=wc*Tr;
TI=1/(wc*tan((pi/2-fi_t)*1/3));
Ap1=k_peak*fs*L/Uout;
