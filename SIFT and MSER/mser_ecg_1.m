close all;
path_data = 'D:\Muggai ka samaan\SEM VII\BTP\PilotData';
path_output = 'D:\Muggai ka samaan\SEM VII\BTP\Experiments\MSER\';
A = dir([path_data '\*.png']);
for i = 1 : size(A,1)
    mser_us(imread(A(i).name));
    saveas(1,[path_output num2str(i) '_1.jpg']);
    saveas(2,[path_output num2str(i) '_2.jpg']);
end
