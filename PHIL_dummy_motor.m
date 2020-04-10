%% Motor parameters for P-HIL

Pn = 90000;
Un_RMS = 400;
fn = 100;
pp = 1;
X_Lr = 0.2;
X_Rr = 0.02;

In_RMS = Pn / (sqrt(3)*Un_RMS);
Zn = Un_RMS / (sqrt(3)*In_RMS);

U = Un_RMS*sqrt(2);

L = (X_Lr * Zn) / (2*pi*fn);

Ld = L;
Lq = L;

Rs = (X_Rr * Zn);

kszi0 = (sqrt(2)*(Un_RMS/sqrt(3)))/(2*pi*fn);

T_start = 0.4;
omega_n = fn*2*pi;

m_n = Pn/omega_n;
Theta = (Pn*T_start)/(omega_n^2)

f_sw = 5e3;
T_sw = 1/f_sw;
Ts = 1/(f_sw*100);

U_DC = 700;

w_0 = 0;

%% Current controller Continous

w_c = (2*pi)/(9*T_sw);
Ti = 1/(w_c*tan(pi/18));
Ap = w_c*Lq;

Kp = Ap
Ki = Ap/Ti

%% Current controller Discrete

w_cd = (2*pi)/(9*T_sw);
Tid = 1/(w_cd*tan(pi/18));
Apd = w_cd*L;

Kpd = Apd
Kid = Apd/Tid



