function hiba = lagrange_interpolacio_hibabecsles(func, a, b, n)
    hiba = ( max_in_range(func, a, b, n + 1) * (b - a)^(n + 1) ) / ( factorial(n + 1) );
    abs(hiba);
end