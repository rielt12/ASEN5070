function y_dot = myodefun(t,y ,k,m)
y_dot(1,1)= y(2);
y_dot(2,1)= (-k/m)*y(1);

end

