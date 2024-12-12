% animate pattern in 3d space
% Fn(theta,phi, v)
function pattern3danimate(Fn, vrange)
    figure
    annotationHandler = annotation('textbox',[0 .9 .1 .1],'EdgeColor', 'none', "FontSize", 12);
    for v = vrange
        F = @(theta, phi) Fn(theta,phi, v);
        pattern3d(F)
        set(annotationHandler, "String", sprintf("v = %.2f", v))
        pause(0.1)
    end
end