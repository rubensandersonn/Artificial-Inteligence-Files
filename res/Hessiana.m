function H = Hessiana(x1, x2)
  y_linha = F_linha(x1, x2);
  H = [(8 - 25.2*(x1).^2 + 10*x1.^4), 1 ; 1 , (-8 + 48*x2.^2)];
end