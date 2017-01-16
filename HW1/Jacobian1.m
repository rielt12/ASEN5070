syms rho_obs;
syms X_0
syms X_S
syms X_dot_0
syms t
syms Y_0
syms Y_S
syms Y_dot_0
syms g
syms rho 
rho = sqrt((X_0-X_S+X_dot_0*t)^2+(Y_0-Y_S+Y_dot_0*t-g*t^2/2)^2);
jacobian([rho_obs-rho], [X_0, X_dot_0,  Y_0, Y_dot_0])
