model War


parameter Real a = 0.29"степень влияния различных факторов на потери X";
parameter Real b = 0.67"эффективность боевых действий со стороны Y";
parameter Real c = 0.6"эффективность боевых действий со стороны X";
parameter Real h = 0.38"степень влияния различных факторов на потери Y";

/*
parameter Real a = 0.31"степень влияния различных факторов на потери X";
parameter Real b = 0.67"эффективность боевых действий со стороны Y";
parameter Real c = 0.42"эффективность боевых действий со стороны X";
parameter Real h = 0.53"степень влияния различных факторов на потери Y";
*/

parameter Real x0 = 45000"начальная численность армии X";
parameter Real y0 = 50000"начальная численность армии Y";
Real x (start = x0, min = 0)"функция изменения численности армии Х";
Real y (start = y0, min = 0)"функция изменения численности армии У";
equation

der(x)=-a*x-b*y+abs(sin(time)+1);
der(y)=-c*x-h*y+abs(cos(time)+1);

/*
der(x)=-a*x-b*y+2*abs(sin(2*time)+1);
der(y)=-c*x*y-h*y+abs(cos(time)+1);
*/
end War;
