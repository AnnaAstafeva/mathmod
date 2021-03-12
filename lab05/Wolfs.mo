model Wolfs
parameter Real a = 0.56; // коэффициент естественной смертности хищников
parameter Real c = 0.57; // коэффициент естественного прироста жертв
parameter Real b = 0.057; // коэффициент увеличения числа хищников
parameter Real d = 0.056; // коэффициент смертности жертв 
Real x(start = 11.0);
Real y(start = 22.0);
/* Стационарное состояние
Real x(start = c/d);
Real y(start = a/b);*/
equation
der(x)=-a*x+b*x*y;
der(y)=c*y-d*x*y;
end Wolfs;
