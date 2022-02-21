function p = lagrange_interpolacio_alappolinom(x, val)
    for i = 1 : length(x)
        y(i) = f_test(x(i));
    end

    p = 0

    for i = 1 : length(x)
        temp = 1;
        for j = 1 : length(x)
            if j ~= i
                temp = temp * ((val - x(j)) / (x(i) - x(j)));
            end
        end
        l(i) = y(i) * temp;
        p = p + l(i);
    end
    
end