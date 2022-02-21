function max = max_in_range(func, a, b, n)
    func = diff(func, n);
    max = abs(subs(func(), a));
    for i = a + 1 : b
        if abs(subs(func(), i)) > max
            max = abs(subs(func(), i));
        end
    end
end
