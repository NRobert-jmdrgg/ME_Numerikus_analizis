function y = masodik_derivalt_hanyadosok(x, h, a, b)
    if length(x) < 1
        printf("Rossz x értékek");
        return;
    endif

    x = sort(x);

    if h < 0
        printf("Rossz h érték\n");
        return;
    endif 

    if not(all(x >= a && x <= b))
        printf("Nem jó\n");
        return;
    endif

    j = 1;

    for i = x
        if ((i + h) <= b) && ((i + (2 * h)) <= b)
            y(j) = ( f(i) - 2 * f(i + h) + f(i + (2 * h)) ) / ( h ^ 2 ); 
        else 
            y(j) = nan;
        endif
        j++;
    endfor    
endfunction

