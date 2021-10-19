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
x = X(:,2:end);
h = X*theta;
r_theta = theta(2:end);
%costfunction
J = 1/(2*m)*(h-y)'*(h-y) + lambda/(2*m)*r_theta'*r_theta;
%gradient
grad = 1/m*(X'*(h-y)) + lambda/m*theta;
grad(1) = 1/m*(X(:,1))'*(h-y);












% =========================================================================

grad = grad(:);

end
