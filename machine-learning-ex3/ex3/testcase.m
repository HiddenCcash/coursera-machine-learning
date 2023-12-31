% input
theta = [-2; -1; 1; 2];
X = [ones(5,1) reshape(1:15,5,3)/10];
y = [1;0;1;0;1] >= 0.5;       % creates a logical array
lambda = 3;
[J grad] = lrCostFunction(theta, X, y, lambda)
