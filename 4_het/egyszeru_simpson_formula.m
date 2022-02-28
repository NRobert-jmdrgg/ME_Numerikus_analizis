function y = egyszeru_simpson_formula(func, a, b)
    y = ( (b - a) / 6 ) * ( subs(func, a) + 4 * subs(func, (a + b) / 2) + subs(func, b) );
end