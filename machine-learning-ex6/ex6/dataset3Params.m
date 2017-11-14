function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 0.3
sigma = 0.1;

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
% Train the SVM
%x1 = [1 2 1]; 
%x2 = [0 4 -1];
%list = [0.01  0.03  0.1  0.3 1  3 10 30];
%error = zeros(8,8);
%list_C = zeros(8,8);
%list_sigma = zeros(8,8);
%minerror=0;
%for i=1:8
%  for j=1:8
%    C = list(i);
%    sigma = list(j);
%    model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%    predictions = svmPredict(model,Xval);
%    error(i,j) = mean(double(predictions ~= yval));
%    list_C(i,j) = C;
%    list_sigma(i,j) = sigma;
%  end
%end
%disp(error);
%[minerror,index] = min(error(:));
%disp(minerror);
%disp(index);
%C =list_C(:)(index)
%sigma = list_sigma(:)(index)


% =========================================================================

end
