close all;
path_data = '..\..\data\';
path_output = '..\..\results\';
A = dir([path_data '*.png']);
for i = 1 : size(A,1)
    sift_us(imread([path_data A(i).name]));
    saveas(1,[path_output 'SIFT\' A(i).name '_1.jpg']);
    %saveas(2,[path_output 'SIFT\' A(i).name '_2.jpg']);
end


% %% Matching
% 
% Ia = imread('ecg1.png');
% imshow(Ia) ;
% Ia = single((Ia)) ;
% 
% Ib = imread('ecg2.png');
% imshow(Ib) ;
% Ib = single((Ib)) ;
% 
% [fa, da] = vl_sift(Ia) ;
% [fb, db] = vl_sift(Ib) ;
% [matches, scores] = vl_ubcmatch(da, db) ;
