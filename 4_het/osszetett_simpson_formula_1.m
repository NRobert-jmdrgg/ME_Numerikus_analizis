function s = osszetett_simpson_formula_1(func, a, b, n)
    
    h = (b - a) / n;
    x_0 = a;
    s = subs(func, x_0);
    t = 0;

    for i = 1 : 2 : n - 1
        t = t + subs(func, (x_0 + i * h));
    end
    
    s = s + 4 * t;

    t = 0;
    for i = 2 : 2 : n - 2
        t = t + subs(func, x_0 + i * h)
    end

    s = s + 2 * t;

    s = s + subs(func, b);

    s = s * ((2*h)/6);
end