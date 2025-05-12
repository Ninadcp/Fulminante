function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(2, 1);
  T(3)=exp(y(2));
  T(4)=exp(y(3)-params(5));
  T(5)=1+params(7)+params(8)*(T(4)-1);
  T(6)=T(3)^params(10);
  residual(1)=(T(6))-(T(6)*T(5)*params(6));
  T(7)=exp(y(1));
  residual(2)=(T(3)+y(3))-(y(3)/T(5)+T(7));
  T(8)=T(3)*getPowerDeriv(T(3),params(10),1);
if nargout > 3
    g1_v = NaN(4, 1);
g1_v(1)=(-(T(6)*params(6)*params(8)*T(4)));
g1_v(2)=1-(T(5)-y(3)*params(8)*T(4))/(T(5)*T(5));
g1_v(3)=T(8)-T(5)*params(6)*T(8);
g1_v(4)=T(3);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 2, 2);
end
end
