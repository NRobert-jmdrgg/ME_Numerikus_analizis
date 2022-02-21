function f = lagrange_i_edik_polinom(x_values, i)
    syms x
    
    f = 1;
    for k = 1 : length(x_values)
        if k ~= i 
            f = f .* ( (x - x_values(k)) / (x_values(i) - x_values(k)) );
        end
    end
    
    
end