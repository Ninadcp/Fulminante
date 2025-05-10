function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = TNTbase.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(19, 1);
g1_v(1)=(-params(1));
g1_v(2)=1;
g1_v(3)=(-(1/exp(y(7))));
g1_v(4)=(-exp(y(7)));
g1_v(5)=(-((-(exp(y(7))*(y(3)-y(9))))/(exp(y(7))*exp(y(7)))));
g1_v(6)=(-exp(y(7)));
g1_v(7)=1;
g1_v(8)=exp(y(8));
g1_v(9)=(-((1+params(6)+params(7)*(exp(y(9)-params(4))-1))*params(5)*exp(y(8))*getPowerDeriv(exp(y(8)),params(9),1)));
g1_v(10)=(-(params(8)/(1-params(8))*exp(y(8))/params(3)*getPowerDeriv(exp(y(8))/params(3),params(9),1)));
g1_v(11)=exp(y(8));
g1_v(12)=(-((1+params(6)+params(7)*(exp(y(9)-params(4))-1)-y(9)*params(7)*exp(y(9)-params(4)))/((1+params(6)+params(7)*(exp(y(9)-params(4))-1))*(1+params(6)+params(7)*(exp(y(9)-params(4))-1)))));
g1_v(13)=(-(T(1)*params(5)*params(7)*exp(y(9)-params(4))));
g1_v(14)=(-((-1)/exp(y(7))));
g1_v(15)=1;
g1_v(16)=1;
g1_v(17)=exp(y(12));
g1_v(18)=exp(y(14))*getPowerDeriv(exp(y(14)),params(9),1);
g1_v(19)=(-params(2));
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 6, 19);
end
