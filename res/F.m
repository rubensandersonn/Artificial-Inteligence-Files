function z = F(x, y)  
  
  #z = (repmat(4, size(x)) - 2.1.*(x(1,:).^2) + (1/3).*(x(1,:).^4)).*(x(1,:).^2)+ x(1,:).*x(2,:) - 4.*(repmat(1, 1, size(x,2)) - (x(2,:).^2)).*x(2,:).^2;
  z = zeros(size(x,2), size(y,2));
  for i=1:length(x)
    for j=1:length(y)
      z(i,j) = fu(x(j), y(i));
    end
  end
  
  
   
end