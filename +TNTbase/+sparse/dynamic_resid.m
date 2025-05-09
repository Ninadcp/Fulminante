function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = TNTbase.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(7, 1);
    residual(1) = (exp(y(9))+y(3)) - (y(10)/(1+params(7)+params(8)*(exp(y(10)-params(5))-1))+exp(y(8)));
    residual(2) = (exp(y(16))^params(10)) - ((1+params(7)+params(8)*(exp(y(10)-params(5))-1))*params(6)*T(1));
    residual(3) = (exp(y(13))) - (params(9)/(1-params(9))*(exp(y(9))/params(4))^params(10));
    residual(4) = (y(12)) - ((y(3)-y(10))/exp(y(8)));
    residual(5) = (y(11)) - (exp(y(8))-exp(y(9)));
    residual(6) = (y(8)-log(params(11))) - (params(3)*x(1)+params(1)*(y(1)-log(params(11)))+params(2)*(y(7)-log(params(11))));
    residual(7) = (y(14)) - (y(1));
end
