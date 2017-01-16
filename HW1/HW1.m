%% Book problem
X_S= 1;
Y_S = 1;
t=[0;1;2;3;4];
rho_obs = [7;8.00390597;8.94427191;9.801147892;10.630145813];

%%rho = sqrt((X_0-X_S+X_dot_0*t)^2+(Y_0-Y_S+Y_dot_0*t-g*t^2/2)^2);

X  = [1.5; 10.0; 2.2; 0.5; 0.3];
for i = 1:5
rho(i,1) = sqrt((X(1,1)-X_S+X(3,1)*t(i,1))^2+(X(2,1)-Y_S+X(4,1)*t(i,1)-X(5,1)*t(i,1)^2/2)^2);
end
J= abs(rho_obs- rho);

while (J > 0.0001)
A(i)=[-0.5*rho*2*(X(1,1)-X_S+X(3,1)*t(i,1)),-0.5*rho*2*(X(1,1)-X_S+X(3,1)*t(i,1))*t(i,1), -0.5*rho*2*(X(2,1)-Y_S+X(4,1)*t(i,1)-X(5,1)*t(i,1)^2/2),(-0.5/rho)*2*(X(2,1)-Y_S+X(4,1)*t(i,1)-X(5,1)*t(i,1)^2/2)*t(i,1),    
    
X_np1 = X-inv(jacobian(J,X))*J;
X=Xnp1;
rho(i,1) = sqrt((X(1,1)-X_S+X(3,1)*t(i,1))^2+(X(2,1)-Y_S+X(4,1)*t(i,1)-X(5,1)*t(i,1)^2/2)^2);
J= abs(rho_obs- rho);


    
end