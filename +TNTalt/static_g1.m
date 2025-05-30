function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = TNTalt.static_g1_tt(T, y, x, params);
end
g1 = zeros(7, 7);
g1(1,1)=(-exp(y(1)));
g1(1,2)=exp(y(2));
g1(1,3)=1-(1+params(7)+params(8)*(exp(y(3)-params(5))-1)-y(3)*params(8)*exp(y(3)-params(5)))/((1+params(7)+params(8)*(exp(y(3)-params(5))-1))*(1+params(7)+params(8)*(exp(y(3)-params(5))-1)));
g1(2,2)=T(2)-(1+params(7)+params(8)*(exp(y(3)-params(5))-1))*params(6)*T(2);
g1(2,3)=(-(T(1)*params(6)*params(8)*exp(y(3)-params(5))));
g1(3,2)=(-(params(9)/(1-params(9))*exp(y(2))/params(4)*getPowerDeriv(exp(y(2))/params(4),params(10),1)));
g1(3,6)=exp(y(6));
g1(4,5)=1;
g1(5,1)=(-exp(y(1)));
g1(5,2)=exp(y(2));
g1(5,4)=1;
g1(6,1)=1-params(1);
g1(6,7)=(-params(2));
g1(7,1)=(-1);
g1(7,7)=1;

end
