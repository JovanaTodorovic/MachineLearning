function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

P=[];
Q=[];
m=length(y);
for i=1:m
    if (y(i)==1)
        P=[P;X(i,:)];
    end;
    if (y(i)==0)
        Q=[Q;X(i,:)];
    end;
end;
plot(P(:,1),P(:,2),'k+','lineWidth', 1.5,'markerSize',6);
plot(Q(:,1),Q(:,2),'ko','markerFaceColor','b','markerSize',6);







% =========================================================================



hold off;

end
