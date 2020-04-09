%% Motor parameters for P-HIL

Pn = 90000;
Un = 400;
fn = 100;
pp = 1;
X_Lr = 0.2;
X_Rr = 0.02;

In = Pn / (sqrt(3)*Un);
Zn = Un / (sqrt(3)*In);

L = (X_Lr * Zn) / (2*pi*fn);

Ld = L;
Lq = L;

Rs = (X_Rr * Zn);

kszi0 = (sqrt(2)*(Un/sqrt(3)))/(2*pi*fn);

T_start = 0.4;
omega = 100*2*pi;

m_n = Pn/(fn*2*pi);
Theta = (Pn*T_start)/(omega^2)

f_sw = 5e3;
T_sw = 1/f_sw;

U_DC = 400;

w_0 = 0;

%% Current controller

w_c = (2*pi)/(9*T_sw);
Ti = 1/(w_c*tan(pi/18));
Ap = w_c*Lq;

Kp = Ap
Ki = Ap/Ti


