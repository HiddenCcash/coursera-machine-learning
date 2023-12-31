function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
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
%

% Yay, no need for Sigmoid function

% Add the bias term and thus column to X
% X = [ ones(size(X,1),1) ,  X ];

J = 1/(2*m)*((X*theta - y)'*(X*theta-y)) + lambda/(2*m)*sum(theta(2:end).^2);


grad = 1/m * (X*theta - y)'*X;
temp = theta;
temp(1) = 0;
grad = grad + lambda/m*temp';


% =========================================================================

grad = grad(:);

end
