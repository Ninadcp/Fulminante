function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11)=T(5)-T(2);
  y(12)=(y(3)-y(10))/T(5);
end
