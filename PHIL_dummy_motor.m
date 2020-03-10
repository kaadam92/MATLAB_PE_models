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

Theta = 0.004;
T_start = 0.4;
omega = 100*2*pi;

m_n = Pn/(fn*2*pi);
Theta = (Pn*T_start)/(omega^2)

f_sw = 10e3;
U_DC = 400;

w_0 = 0;

