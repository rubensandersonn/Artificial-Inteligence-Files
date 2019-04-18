classdef funcao_F

  properties
    y
    y_linha
    Hess
  end
  
  methods  
    function nada(obj)
      'nada'
    end
    
    function y = fu(obj, x1, x2)
      y = (4 - 2.1* (x1.^2) + (1/3)* (x1^4))*(x1.^2) + x1*x2 - 4*(1-(x2^2))*x2.^2;
    end
  
    function y = F(obj, x)
      y = zeros(size(x));
      for i=1:size(x,1)
        for j=1:size(x,2)
          y(i,j) = Fu(x(i,i), x(i,j));
        endfor
      endfor
      obj.y = y;
    end
    
    function H = Hessiana(obj, x)
      obj.y_linha = F_linha(obj, x);
      obj.Hess = [(8 - 25.2*(x(1,:)).^2 + 10*x(1,:).^4), 1 ; 1 , (-8 + 48*x(2,:).^2)];
      H = obj.Hess;
    end 
    
    function y = F_linha(obj, x)      
      obj.y_linha = [(8*x(1,:) - 8.4*x(1,:).^3 + 2*x(1,:).^5 + x(2,:)) , (x(1,:) - 8*x(2,:) + 16*x(2,:).^3)];
      y = obj.y_linha;
    end
  
  end  
end