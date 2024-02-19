L = 10; % feet
r = 1;  % feet
target_volume = 12.4; % cubic feet
initial_interval = [0, 1];
epsilon = 1e-4;
imax = 20;

f = @(h) trough_volume(h, L, r) - target_volume;

depth = Bisect(initial_interval(1), initial_interval(2), epsilon, imax, f);

fprintf('The trough is filled to a depth of approximately %.4f meters.\n', depth);