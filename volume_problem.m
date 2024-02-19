R = 3.5;
target_volume = 35;
initial_interval = [0, 9];
epsilon = 1e-4;
imax = 20;

f = @(h) Volume(h, R) - target_volume;

depth = Bisect(initial_interval(1), initial_interval(2), epsilon, imax, f);

fprintf('The tank must be filled to a depth of %.4f meters.\n', depth);
