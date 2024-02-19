function root = Bisect(xl, xu, epsilon, imax, f)
    i = 0;
    fl = f(xl);

    while i <= imax
        xr = (xl + xu)/2;
        fr = f(xr);
        if fr == 0 || (xu - xl)/abs(xu + xl) < epsilon
            root = xr;
            return
        end
        i = i + 1;
        if fl * fr < 0
            xu = xr;
        else
            xl = xr;
            fl = fr;
        end
    end
    root = 'failed to converge';
end
