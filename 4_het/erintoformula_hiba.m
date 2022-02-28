function y = erintoformula(func, a, b)
    y = ( (b - a)^3 * max_in_range(func, a, b, 2) ) / 24;
end