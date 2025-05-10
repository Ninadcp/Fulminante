function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = TNTbase.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(6, 1);
    residual(1) = (exp(y(8))+y(3)) - (y(9)/(1+params(6)+params(7)*(exp(y(9)-params(4))-1))+exp(y(7)));
    residual(2) = (exp(y(14))^params(9)) - ((1+params(6)+params(7)*(exp(y(9)-params(4))-1))*params(5)*T(1));
    residual(3) = (exp(y(12))) - (params(8)/(1-params(8))*(exp(y(8))/params(3))^params(9));
    residual(4) = (y(11)) - ((y(3)-y(9))/exp(y(7)));
    residual(5) = (y(10)) - (exp(y(7))-exp(y(8)));
    residual(6) = (y(7)-log(params(10))) - (params(1)*(y(1)-log(params(10)))+params(2)*x(1));
end
