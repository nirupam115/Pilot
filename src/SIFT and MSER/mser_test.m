close all;
path_data = '..\..\data\';
path_output = '..\..\results\';
A = dir([path_data '*.png']);
for i = 1 : size(A,1)
    mser_us(imread([path_data A(i).name]));
    saveas(1,[path_output 'MSER\' A(i).name '_1.jpg']);
    saveas(2,[path_output 'MSER\' A(i).name '_2.jpg']);
end
