function main2()
  epsilon = 0.001;
  alpha = 0.05;
  # pontos bons para o começo: 0.5, 0 ; -0.5, 0 ; -0.7, 0.7 ; 1.2, 1.2 ; 0.7, -1.5
  'Pontos iniciais: '
  #X = [[0.5, 0]; [-0.5, 0]; [-0.7, 0.7]; [-0.5, -1.5]; [0.7, -1.5]]
  X = [[0.5, 0]; [-0.5, 0]; [-1.8, 0];[1.8, 0]]
  
  for i=1:size(X,1)
    [P, npassos] = minimizer_deriv(epsilon, alpha, X(i, 1), X(i, 2));  
    plotarHistorico(P, 200)  ;
  endfor
  
  # plotar as funçoes com os pontos iniciais
  #show(X,200);
  #plotar();
  
  
endfunction
