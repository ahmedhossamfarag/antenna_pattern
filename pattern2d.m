% draw pattern on polar plot in ZX , XY, ZY planes
% Fn(theta, phi)
function pattern2d(Fn)
    N = 100;
    thetat = linspace(0,2*pi, N);
    theta = [linspace(0,pi,N/2),linspace(pi,0,N/2)];
    phi = linspace(0, 2*pi, N);
    
    figure
    %% ZX plane
    f = abs(Fn(theta, repelem(0, N)));
    subplot(1, 3, 1)
    patternplot(thetat, f, "ZX (phi=0)")
    %% XY plane
    f = abs(Fn(repelem(pi/2, N), phi));
    subplot(1, 3, 2)
    patternplot(phi, f, "XY (theta=90)")
    %% ZY plane
    f = abs(Fn(theta, repelem(pi/2, N)));
    subplot(1, 3, 3)
    patternplot(thetat, f, "ZY (phi=90)")
end