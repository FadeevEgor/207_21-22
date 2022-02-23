function [y, J] = myfunction2d(x)
    y = zeros(1, 2);
    
    y(1) = exp(x(1)) - x(2);
    y(2) = x(1);
    
    if nargout == 2
        J = zeros(2, 2);
        J(1, 1) = exp(x(1));
        J(1, 2) = -1;
        J(2, 1) = x(1);
        J(2, 2) = 0;
        % J = J';
    end
    
end

