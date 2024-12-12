% animate pattern on polar plot for ZX plane
% Fn(theta,phi,v)
function pattern2danimate(Fn, vrange)
    N = 100;
    thetat = linspace(0,2*pi,N);
    theta = [linspace(0,pi,N/2),linspace(pi,0,N/2)];
    figure
    annotationHandler = annotation('textbox',[0 .9 .1 .1],'EdgeColor', 'none', "FontSize", 12);
    for v = vrange
        f = abs(Fn(theta, repelem(0,N), v));
        patternplot(thetat, f, "ZX (phi=0)")
        set(annotationHandler, "String", sprintf("v = %.2f", v))
        pause(0.1)
    end
end