function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = TNTbase.static_resid_tt(T, y, x, params);
end
residual = zeros(7, 1);
    residual(1) = (exp(y(2))+y(3)) - (y(3)/(1+params(7)+params(8)*(exp(y(3)-params(5))-1))+exp(y(1)));
    residual(2) = (T(1)) - (T(1)*(1+params(7)+params(8)*(exp(y(3)-params(5))-1))*params(6));
    residual(3) = (exp(y(6))) - (params(9)/(1-params(9))*(exp(y(2))/params(4))^params(10));
residual(4) = y(5);
    residual(5) = (y(4)) - (exp(y(1))-exp(y(2)));
    residual(6) = (y(1)-log(params(11))) - (params(3)*x(1)+(y(1)-log(params(11)))*params(1)+params(2)*(y(7)-log(params(11))));
    residual(7) = (y(7)) - (y(1));

end
