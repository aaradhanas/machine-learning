function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n = size(X,2);  % number of features
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

% X0 = X(:,1);
% X1 = X(:,2);
% X2 = X(:,3);
h = X * theta;

% delta0 = 1/m * sum((h - y) .* X0);
% delta1 = 1/m * sum((h - y) .* X1);
% delta2 = 1/m * sum((h - y) .* X2);

% delta = [delta0; delta1; delta2];


delta = zeros(n,1);
for f = 1:n
	delta(f) = 1/m * sum((h-y) .* X(:,f));
end
	
theta = theta - alpha * delta;









    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
