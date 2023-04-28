% Set up the grid of values for x
x = linspace(-1, 1, 100);
[X, Y] = meshgrid(x, x);
Z = zeros(size(X));

% Compute the L1, L2, and infinity norms of each point
for i = 1:numel(X)
    x = [X(i); Y(i)];
    Z(i) = norm(x, 1); % L1 norm
    %Z(i) = norm(x, 2); % L2 norm
    %Z(i) = norm(x, inf); % Infinity norm
end

% Plot the results
figure;
contourf(X, Y, Z, 20);
colorbar;
xlabel('X');
ylabel('Y');
title('L1 Norm');
