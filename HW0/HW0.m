%% HW0
  [t,y]= ode45(@myodefun,[0:0.001:10],[4 4],[],3,4);
  figure (1)
  plot(t,y(:,1));
  hold on
  plot (t,y(:,2));
  hold on 
  plot(t, 4*cos(sqrt(0.75)*t)+4*sin(sqrt(0.75)*t))
