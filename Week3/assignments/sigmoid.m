function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

if (size(z,1) == 1 && size(z,2) == 1)
  g = 1/(1+exp(-z));
else
  for row = 1:size(z,1)
    for col = 1:size(z,2)
      el = z(row, col);
      g(row, col) =  1/(1+exp(-el));
    end
  end
endif



% =============================================================

end
