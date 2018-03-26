function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   g = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.

g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the gradient of the sigmoid function evaluated at
%               each value of z (z can be a matrix, vector or scalar).



if (size(z,1) == 1 && size(z,2) == 1)
  g = 1/(1+exp(-z));
  g = g * (1-g);
else
  for row = 1:size(z,1)
    for col = 1:size(z,2)
      el = z(row, col);
      sig_value = 1/(1+exp(-el));
      g(row, col) = sig_value * (1-sig_value);
    end
  end
endif










% =============================================================




end
