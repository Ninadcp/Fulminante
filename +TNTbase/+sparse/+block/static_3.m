function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(2, 1);
  T(2)=exp(y(2));
  T(3)=exp(y(3)-params(4));
  T(4)=1+params(6)+params(7)*(T(3)-1);
  T(5)=T(2)^params(9);
  residual(1)=(T(5))-(T(5)*T(4)*params(5));
  T(6)=exp(y(1));
  residual(2)=(T(2)+y(3))-(y(3)/T(4)+T(6));
  T(7)=T(2)*getPowerDeriv(T(2),params(9),1);
if nargout > 3
    g1_v = NaN(4, 1);
g1_v(1)=(-(T(5)*params(5)*params(7)*T(3)));
g1_v(2)=1-(T(4)-y(3)*params(7)*T(3))/(T(4)*T(4));
g1_v(3)=T(7)-T(4)*params(5)*T(7);
g1_v(4)=T(2);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 2, 2);
end
end
