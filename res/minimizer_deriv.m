function [X, npassos] = minimizer_deriv(epsilon, alpha, xi, yi)
  # minimizer_deriv(epsilon, alpha, xi, yi)
  # xi, yi sao os pontos iniciais
  # epsilon eh a tolerancia para a derivada
  # alpha eh o tamanho do passo
  
  X = [];
  npassos = 0;
  
  d = [0,0];
  x = [xi, yi];
  X = [X; x];
  
  while abs(fu_l(x(1), x(2))) > epsilon & npassos < 100
    d = -1.* fu_l(x(1), x(2))';
    x = x + alpha .* d;
    X = [X; x];
    
    fu(x(1), x(2))
    x
    
    npassos+=1;    
  endwhile
  "-------------------------------"
  "x inicial:"
  [xi, yi]
  'x*'
  x
  'f = '
  fu(x(1), x(2))
  
  "f' = "
  fu_l(x(1), x(2))
  
  "numero de passos: "
  npassos
  "-------------------------------"
  
endfunction
