function result = zart_newton_cotes_formula(func, a, b, n)
    j = 1;
    h = (b - a) / h;
    x = [a : h : b];
    for i = x
        y(j) = subs(func(i));
        j = j + 1;
    end

    result = 0;

    for k = 0 : n
        result = result + ( ((b - a) * int(lagrange_i_edik_polinom(x, k), a, b)) * y(k) );
    end
end