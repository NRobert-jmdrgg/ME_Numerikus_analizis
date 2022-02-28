function y = erintoformula(func, a, b)
    y = (b - a) * subs(func, (a + b) / 2);    
end