function z = F_linha(x, y)      
  #y = [(8.*x(1,:) - 8.4*x(1,:).^3 + 2*x(1,:).^5 + x(2,:)) ; (x(1,:) - 8*x(2,:) + 16*x(2,:).^3)];
  for i=1:length(x)
    for j=1:length(y)
      z(i,j) = fu_l(x(i), y(j));
    end
  end
  
end