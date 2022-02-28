function y = egyszeru_simpson_formula_hibabecsles(func, a, b)
    y = max_in_range(func, a, b, 4) * ( ((b - a)^5) / (90) );
end