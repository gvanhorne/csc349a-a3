function volume = trough_volume(h, L, r)
    volume = L * ((0.5 * pi * r^2) - (r^3 * asin(h/r)) - h * sqrt(r^2 - h^2));
end