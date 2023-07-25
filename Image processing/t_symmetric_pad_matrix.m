function [tmat] = t_symmetric_pad_matrix(mat,t)
% dim=size(mat);
% tmat=zeros(dim+2*t);
% tmat( (t+1:t+dim(1)) , (t+1:t+dim(2)) )=mat;
% 
% dim=size(tmat);
% tmat( 1:t , : )=flip(tmat( t+1:2*t , : ),1);
% tmat( dim(1)-t+1:dim(1) , : )=flip(tmat( dim(1)-2*t+1:dim(1)-t , : ),1);
% tmat( : , 1:t )=flip(tmat( : , t+1:2*t ),2);
% tmat( : , dim(1)-t+1:dim(1) )=flip(tmat( : , dim(1)-2*t+1:dim(1)-t ),2);
tmat=padarray(mat,t,"symmetric");
tmat=padarray(transpose(tmat),t,"symmetric");
tmat=transpose(tmat);
