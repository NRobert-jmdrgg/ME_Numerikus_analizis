function y = masodik_derivalt_hanyadosok2(x, h, a, b)
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
        if ((i + h) <= b) && ((i - h) >= a) 
            
            y(j) = ( f(i + h) - ( 2 * f(i) ) + f(i - h) ) / ( h ^ 2 );
        else 
            y(j) = nan;
        endif
        j++;
    endfor    
endfunction

