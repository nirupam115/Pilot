for i = 1:25
    I = imread(['scan (' num2str(i) ').png']);
    figure;
    imshow(double(I), [0 255]);
end