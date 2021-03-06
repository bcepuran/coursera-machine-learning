function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;

n = size(X,2); % # of features
m = size(X,1); % # of samples

mu = zeros(1, n);
sigma = zeros(1, n);

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mu = mean(X);
sigma = std(X);

% mu = ones(1,m)*X./m;
% for i = 1:n,
%  sigma(1,i) = max(X(:,i)) - min(X(:,i));  %calculation based on description in lecture notes, known to not be standard deviation
% end;

for i = 1:n,
  X_norm(:,i) -= mu(1,i);
  X_norm(:,i) /= sigma(1,i);
end;



% ============================================================

end
