function show(X,n)
  
  x = [-3:6/100:3];
  y = [-2:(4/100):2];
  
  z = F(x,y);
  
  figure;
  contour(x,y,z,n);
  hold on;
  plot(X(:,1), X(:,2), 'or');  
  hold off;
endfunction
