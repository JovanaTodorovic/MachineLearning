function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
%B=[1 5;7 8; 99 7]
%[1 4;2 5;3 9].*B
%sum(B(2,:))
%size(theta)
for iter = 1:num_iters
   % for i=1:2
        M=X*theta;
        M=M-y;
        A=M.*X(:,1);
        B=M.*X(:,2);
        delta(1,1)=sum(A)/m;
        delta(2,1)=sum(B)/m;
  %  end
    theta=theta-alpha*delta;
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

%end

end
