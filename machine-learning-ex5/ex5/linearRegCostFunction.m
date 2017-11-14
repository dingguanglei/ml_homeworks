function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%seKkGJ9vCDsyN9dk
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%theta 2 1 [1;1]

J = 1/(2*m) * sum((X*theta-y).^2) + lambda/(2*m) * sum(theta.^2); % ��������ͷ��������  
J = J - lambda/(2*m) * theta(1)^2; % ��ȥtheta0��ƽ��������Ҫ�ͷ�theta0  
 
grad(1) = 1/m * sum((X*theta-y)); % theta0��ƫ��  
for i = 2:size(theta,1)  
   grad(i) = 1/m * sum((X*theta-y).*X(:,i)) + lambda/m * theta(i); % theta1-thetan��ƫ��  
end  

% =========================================================================

grad = grad(:);

end
