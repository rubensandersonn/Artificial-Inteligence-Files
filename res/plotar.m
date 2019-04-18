function plotar()
  
  x = [-3:6/100:3];
  y = [-2:(4/100):2];
  
  z = F(x,y);
  
  figure;
  
  plot3(x,y,z);
  
endfunction