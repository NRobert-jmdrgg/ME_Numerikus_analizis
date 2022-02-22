function I = egyszeru_trapez_modszer(func, a, b)
    h = b - a;
    y(0) = func(a);
    y(1) = func(b);

    I = ((y(0) + y(1)) / 2) * h;
end