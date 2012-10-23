for i = 1:27
   
    A = imread(['heart (', num2str(i) ,').png']);
    A = im2double(A);
    A = A./max(A(:));
    m = min(size(A));
    %A = imresize(A,[m m]);
    imwrite(A,['heart_',num2str(i),'.png'],'png');
    
end