function l_1 = teglalap_formula2(func, a, b, n)
    x = [a : (b - a) / n : b];

    y = func(x);

    l_1 = 1
    for j = 1 : n 
        l_1 = l_1 +  y(j);
    end

    l_1 = l_1 * h;
end