for i = 1:6
    close all;
    sift_us(imread(['ecg' num2str(i) '.png']));
    saveas(1,['output_sift_' num2str(i) '_1.jpg']);
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
