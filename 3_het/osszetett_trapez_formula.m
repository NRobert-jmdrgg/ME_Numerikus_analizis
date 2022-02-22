function result = osszetett_trapez_formula(func, x)
    sort(x);
    a = x(1);
    b = x(length(x));
    y = func(x);

    result = 0;
    for i = 0 : length(x) - 1
        result = result + ( (x(i + 1) - x(i)) / 2 ) * ( y(i) + y(i + 1) );
    end
end