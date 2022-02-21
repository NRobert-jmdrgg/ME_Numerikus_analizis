function newti(x, y, p0)
    
    n = length(x);
    h = x(2) - x(1);
    F = zeros(n, n);
    F(:,1) = y;
    
    for j = 2 : n
        for i = j : n
            F(i, j) = F(i, j - 1) - F(i - 1, j - 1);
        end
    end
    F
end