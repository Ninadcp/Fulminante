function [lhs, rhs] = static_resid(y, x, params)
T = NaN(1, 1);
lhs = NaN(6, 1);
rhs = NaN(6, 1);
T(1) = exp(y(2))^params(9);
lhs(1) = exp(y(2))+y(3);
rhs(1) = y(3)/(1+params(6)+params(7)*(exp(y(3)-params(4))-1))+exp(y(1));
lhs(2) = T(1);
rhs(2) = T(1)*(1+params(6)+params(7)*(exp(y(3)-params(4))-1))*params(5);
lhs(3) = exp(y(6));
rhs(3) = params(8)/(1-params(8))*(exp(y(2))/params(3))^params(9);
lhs(4) = y(5);
rhs(4) = 0;
lhs(5) = y(4);
rhs(5) = exp(y(1))-exp(y(2));
lhs(6) = y(1)-log(params(10));
rhs(6) = (y(1)-log(params(10)))*params(1)+params(2)*x(1);
end
