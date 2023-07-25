function [im]=alpha_trimmed_mean_filter(im)
dim=size(im);
tmat=t_symmetric_pad_matrix(im,2);
for i=3:dim(1)+2
    for j=3:dim(2)+2
         mat=Window(tmat,i,j,5);
         res=trimmed_mean_calculator(mat,5);
         res=res/21;
         im(i-2,j-2)=res;
    end
end