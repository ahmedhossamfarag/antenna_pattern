%%
Fn = @(theta,phi) sin(2*theta);
pattern2d(Fn)
%%
Fn = @(theta,phi, v) sin(v*theta);
pattern2danimate(Fn, linspace(1,4,20))
%%
Fn = @(theta,phi) sin(2*theta);
pattern3d(Fn)
%%
Fn = @(theta,phi, v) sin(v*theta);
pattern3danimate(Fn, linspace(1,4,20))