function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = TNTalt.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(22, 1);
g1_v(1)=(-params(1));
g1_v(2)=(-1);
g1_v(3)=1;
g1_v(4)=(-(1/exp(y(8))));
g1_v(5)=(-params(2));
g1_v(6)=(-exp(y(8)));
g1_v(7)=(-((-(exp(y(8))*(y(3)-y(10))))/(exp(y(8))*exp(y(8)))));
g1_v(8)=(-exp(y(8)));
g1_v(9)=1;
g1_v(10)=exp(y(9));
g1_v(11)=(-((1+params(7)+params(8)*(exp(y(10)-params(5))-1))*params(6)*exp(y(9))*getPowerDeriv(exp(y(9)),params(10),1)));
g1_v(12)=(-(params(9)/(1-params(9))*exp(y(9))/params(4)*getPowerDeriv(exp(y(9))/params(4),params(10),1)));
g1_v(13)=exp(y(9));
g1_v(14)=(-((1+params(7)+params(8)*(exp(y(10)-params(5))-1)-y(10)*params(8)*exp(y(10)-params(5)))/((1+params(7)+params(8)*(exp(y(10)-params(5))-1))*(1+params(7)+params(8)*(exp(y(10)-params(5))-1)))));
g1_v(15)=(-(T(1)*params(6)*params(8)*exp(y(10)-params(5))));
g1_v(16)=(-((-1)/exp(y(8))));
g1_v(17)=1;
g1_v(18)=1;
g1_v(19)=exp(y(13));
g1_v(20)=1;
g1_v(21)=exp(y(16))*getPowerDeriv(exp(y(16)),params(10),1);
g1_v(22)=(-params(3));
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 7, 22);
end
