function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(2, 1);
end
[T_order, T] = TNTalt.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(15, 1);
g1_v(1)=(-exp(y(1)));
g1_v(2)=(-exp(y(1)));
g1_v(3)=1-params(1);
g1_v(4)=(-1);
g1_v(5)=exp(y(2));
g1_v(6)=T(2)-(1+params(7)+params(8)*(exp(y(3)-params(5))-1))*params(6)*T(2);
g1_v(7)=(-(params(9)/(1-params(9))*exp(y(2))/params(4)*getPowerDeriv(exp(y(2))/params(4),params(10),1)));
g1_v(8)=exp(y(2));
g1_v(9)=1-(1+params(7)+params(8)*(exp(y(3)-params(5))-1)-y(3)*params(8)*exp(y(3)-params(5)))/((1+params(7)+params(8)*(exp(y(3)-params(5))-1))*(1+params(7)+params(8)*(exp(y(3)-params(5))-1)));
g1_v(10)=(-(T(1)*params(6)*params(8)*exp(y(3)-params(5))));
g1_v(11)=1;
g1_v(12)=1;
g1_v(13)=exp(y(6));
g1_v(14)=(-params(2));
g1_v(15)=1;
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 7, 7);
end
