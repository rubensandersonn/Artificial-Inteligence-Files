function y = fu(x1, x2)
  y = (4 - 2.1* (x1.^2) + (1/3)* (x1^4))*(x1.^2) + x1*x2 - 4*(1-(x2^2))*x2.^2;
end