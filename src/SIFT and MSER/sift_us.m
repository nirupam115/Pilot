%% SIFT Keypoint
function [] = sift_us(I)

imshow(I) ;

I = single((I)) ;
[f,d] = vl_sift(I) ;

perm = randperm(size(f,2)) ;
sel = perm(1:100) ;
h1 = vl_plotframe(f(:,sel)) ;
h2 = vl_plotframe(f(:,sel)) ;
set(h1,'color','k','linewidth',3) ;
set(h2,'color','y','linewidth',2) ;

% h3 = vl_plotsiftdescriptor(d(:,sel),f(:,sel)) ;
% set(h3,'color','g') ;
end