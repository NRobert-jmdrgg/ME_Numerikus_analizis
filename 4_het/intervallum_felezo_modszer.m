function y = intervallum_felezo_modszer(func, a, b, k)
    if (subs(func, a) * subs(func, b) > 0)
        fprintf('nincs gyoke a, b intervallumon\n');
        return ;
    end

    for i = 1 : k
        c(i) = (a(i) + b(i)) / 2;
        if ( (subs(func, a(i)) * subs(func, c(i))) < 0 )
            a(i + 1) = a(i);
            b(i + 1) = c(i);
        else
            a(i + 1) = c(i);
            b(i + 1) = b(i);
        end
    end

    a
    b
    c
    
    y = c(length(c));
end