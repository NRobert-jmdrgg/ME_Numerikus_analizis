function R = egyszeru_trapez_modszer_hiba(func, a, b)
    h = b - a;
    R = (max_in_range(func, a, b, 2) * h^3) / 12;
    R = abs(R);    
end