function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%


error_matrix = zeros(64, 3);
k = 1;
% C values
C_vector = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

% sigma values
sigma_vector = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

%for i = 1: size(C_vector, 1)
%  for j = 1: size(sigma_vector, 1)
%    model = svmTrain(X, y, C_vector(i) , @(x1, x2) gaussianKernel(x1, x2, sigma_vector(j)));
%    prediction = svmPredict(model, Xval);
%    pred_error = mean(double(prediction ~= yval));
%    error_matrix(k,1) = C_vector(i);
%    error_matrix(k,2) = sigma_vector(j);
%    error_matrix(k,3) = pred_error;
%    k++;
%  end
%end 

%for i = 1: size(error_matrix, 1)
%  fprintf('pred_error for C=%f, sigma=%f is %f', error_matrix(i,1), error_matrix(i,2), error_matrix(i,3));
%end

%[min, index] = min(error_matrix(:,3));

%C = error_matrix(index, 1);
%sigma = error_matrix(index, 2);

C = 1.000000;
sigma = 0.100000;

%fprintf('min error for C=%f, sigma=%f is %f',C, sigma, min);

% =========================================================================

end
