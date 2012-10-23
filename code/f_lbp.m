function [A,B] = f_lbp(I,th);
    [m n] = size(I);
    A = zeros(m,n,3);
    R = [1 2 4;128 0 8;64 32 16];
    
    for i = 2:m
        for j = 2:n
            N = I(i-1:i+1,j-1:j+1);
            
            