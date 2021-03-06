model Occillator

parameter Real w=sqrt(5); // второй и третий случай
//parameter Real w=sqrt(14); // первый случай
//parameter Real g=0.0; // первый случай
//parameter Real g=1.0; // второй случай
parameter Real g=2.0; // третий случай

Real x(start = 1.3);
Real y(start = -1.2);

equation
der(x) = y;
der(y) + 2*g*y + w*w*x = 0.5*cos(2.0*time); // третий случай
//der(y) + 2*g*y + w*w*x = 0; // первый и второй случай

end Occillator;
