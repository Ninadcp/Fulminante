function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(1, 1);
lhs = NaN(6, 1);
rhs = NaN(6, 1);
T(1) = exp(y(8))^params(9);
lhs(1) = exp(y(8))+y(3);
rhs(1) = y(9)/(1+params(6)+params(7)*(exp(y(9)-params(4))-1))+exp(y(7));
lhs(2) = exp(y(14))^params(9);
rhs(2) = (1+params(6)+params(7)*(exp(y(9)-params(4))-1))*params(5)*T(1);
lhs(3) = exp(y(12));
rhs(3) = params(8)/(1-params(8))*(exp(y(8))/params(3))^params(9);
lhs(4) = y(11);
rhs(4) = (y(3)-y(9))/exp(y(7));
lhs(5) = y(10);
rhs(5) = exp(y(7))-exp(y(8));
lhs(6) = y(7)-log(params(10));
rhs(6) = params(1)*(y(1)-log(params(10)))+params(2)*x(1);
end
