function y = osszetett_simpson_formula_hibabecsles_1(func, a, b, n)
    y = max_in_range(func, a, b, 4) * ( (b - a)^5 / (90 * n^4) );
end