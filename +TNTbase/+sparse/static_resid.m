function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = TNTbase.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(6, 1);
    residual(1) = (exp(y(2))+y(3)) - (y(3)/(1+params(6)+params(7)*(exp(y(3)-params(4))-1))+exp(y(1)));
    residual(2) = (T(1)) - (T(1)*(1+params(6)+params(7)*(exp(y(3)-params(4))-1))*params(5));
    residual(3) = (exp(y(6))) - (params(8)/(1-params(8))*(exp(y(2))/params(3))^params(9));
residual(4) = y(5);
    residual(5) = (y(4)) - (exp(y(1))-exp(y(2)));
    residual(6) = (y(1)-log(params(10))) - ((y(1)-log(params(10)))*params(1)+params(2)*x(1));
end
