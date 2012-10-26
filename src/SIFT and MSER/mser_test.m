close all;

path_data = '..\..\processed_dataset\'; % Uncomment to use images in folder: processed_dataset 
% path_data = '..\..\data\'; % Uncomment to use images in folder: data

path_output = '..\..\results\';
A = dir([path_data '*.png']);
for i = 1 : size(A,1)
    mser_us(imread([path_data A(i).name]));
    
    % Uncomment while using images from folder: processed_dataset
    saveas(1,[path_output 'MSER on processed\' A(i).name '_1.jpg']);
    saveas(2,[path_output 'MSER on processed\' A(i).name '_2.jpg']);
    
    % Uncomment while using images from folder: data
 %   saveas(1,[path_output 'MSER\' A(i).name '_1.jpg']);
 %   saveas(2,[path_output 'MSER\' A(i).name '_2.jpg'])
 
end
