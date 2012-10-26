function P = pre_process(I)
    P = im2double(I);
    P = P./max(P(:));
    P = medfilt2(P);
    for i = 1:5
        P = medfilt2(P);
    end
    
    h = fspecial('gaussian', [4 4], 1);
    for i = 1:5
        P = imfilter(P,h);
        P = P./max(P(:));
    end
    
    %P = im2bw(P);    
    
end
    
