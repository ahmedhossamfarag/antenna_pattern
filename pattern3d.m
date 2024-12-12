% draw pattern in 3d space
% Fn(theta,phi)
function pattern3d(Fn)
    N = 500;
    theta = linspace(0, pi, N/2);
    phi = linspace(0, 2*pi, N);                 
    
    [Theta, Phi] = meshgrid(theta, phi);
    
    f = abs(Fn(Theta, Phi));
    
    X = f .* sin(Theta) .* cos(Phi);
    Y = f .* sin(Theta) .* sin(Phi);
    Z = f .* cos(Theta);
    
    surf(X, Y, Z, f, 'EdgeColor', 'none');
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    colorbar;
    colormap turbo
    axis equal;

end