function root = Bisect(xl, xu, epsilon, imax, f)
    i = 0;
    fl = f(xl);

    fprintf( ' iteration     approximation \n')
    while i <= imax
        xr = (xl + xu)/2;
        fprintf( ' %6.0f %18.8f \n', i, xr )
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
    fprintf( ' failed to converge in %g iterations\n', imax )
end
