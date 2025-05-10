function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(2, 1);
  T(2)=exp(y(8));
  T(3)=exp(y(9)-params(4));
  T(4)=1+params(6)+params(7)*(T(3)-1);
  T(5)=exp(y(7));
  residual(1)=(T(2)+y(3))-(y(9)/T(4)+T(5));
  T(6)=exp(y(14));
  T(7)=T(2)^params(9);
  residual(2)=(T(6)^params(9))-(T(4)*params(5)*T(7));
if nargout > 3
    g1_v = NaN(6, 1);
g1_v(1)=1;
g1_v(2)=(-((T(4)-y(9)*params(7)*T(3))/(T(4)*T(4))));
g1_v(3)=(-(T(7)*params(5)*params(7)*T(3)));
g1_v(4)=T(2);
g1_v(5)=(-(T(4)*params(5)*T(2)*getPowerDeriv(T(2),params(9),1)));
g1_v(6)=T(6)*getPowerDeriv(T(6),params(9),1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 2, 6);
end
end
