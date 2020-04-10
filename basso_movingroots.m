%%Smbolic test
%Live script?
clear;

syms G2 G1 w_z1 w_p1 w_p2 w0 Q s

Gs = G2*(1/(1+s/w_p2));
Hs = G1*((1+s/w_z1)/(1+s/w_p1));

syms Gs Hs

Tol = Gs*Hs;

syms Tol

Tcl = Tol/(1+Tol)

simplify(Tcl)