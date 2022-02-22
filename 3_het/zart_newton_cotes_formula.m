function result = zart_newton_cotes_formula(func, a, b, n)
    syms x
    
    j = 1;
    h = (b - a) / n;
    x_values = [a : h : b];
    for i = x_values
        y(j) = subs(func(i));
        j = j + 1;
    end

    result = 0;

    for k = 0 : n
        result = result + ( ((b - a) * int(lagrange_i_edik_polinom(x_values, k), a, b)) * y(k) );
    end
end