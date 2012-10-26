clc;
close all;
clear;

path_data = '..\..\processed_dataset\'; % Uncomment to use images in folder: processed_dataset 
% path_data = '..\..\data\'; % Uncomment to use images in folder: data

path_output = '..\..\results\';
P = dir([path_data '*.png']);

for k = 1:size(P,1)
   
    A = pre_process(imread([path_data P(k).name]));
    filx = [-1 0 1];
    fily = [-1;0;1];
    [m n] = size(A);
    
    grad_x = zeros(m,n);
    grad_y = grad_x;
    for i = 3:m-2
        for j = 3:n-2
            if(A(i,j-2)*A(i,j)*A(i,j+2)*A(i-2,j)*A(i,j)*A(i+2,j) > 0)
                grad_x(i,j) = abs(A(i,j+1)-A(i,j));
                grad_y(i,j) = abs(A(i+1,j)-A(i,j));
            end
        end
    end
                
    %grad_x = imfilter(A,filx);
    %grad_y = imfilter(A,fily);
    s_x = svd(grad_x);
    s_y = svd(grad_y);
    
    e_x = eig(grad_x'*grad_x);
    e_y = eig(grad_y'*grad_y);
    
    s_x = max(e_x);
    s_y = max(e_y);
    
    B(k,1) = s_y;
    B(k,2) = s_x; 
    B(k,3) = atan(s_y/s_x);
    
    %x = sum(abs(grad_x(:)));
    %y = sum(abs(grad_y(:)));
    
    m1 = 1000;
%     x = x/(m*n);
%     y = y/(m*n);
%     B(k,1) = x;
%     B(k,2) = y;
    %B(k,3) = atan(y/x);
    hold on;
    if k<=10 
        plot(B(k,3),0,'k.');
    else
        plot(B(k,3),0,'rx');
    end
end
xlabel('value of atan(gradient)');
hold off;
