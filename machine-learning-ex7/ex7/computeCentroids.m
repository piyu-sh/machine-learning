function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


## UNOPTIMISED Solution

##for cen = 1:K
##  count = 0;
##  for ex = 1:m
##    if (idx(ex) == cen)
##      centroids(cen,:) = centroids(cen,:) + X(ex,:);
##      count = count+1;
##    endif
##  endfor
##  centroids(cen,:) = centroids(cen,:)./count;
##endfor

## OPTIMISED Solution

for cen = 1:K
  pos = find(idx == cen);
  if (size(pos,1)>1)
    centroids(cen,:) = mean(X(pos,:));
  endif

endfor


% =============================================================


end

