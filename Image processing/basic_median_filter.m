function [im]=basic_median_filter(im)
im=t_symmetric_pad_matrix(im,1);
dim=size(im);
for i=2:dim(1)-1
    for j=2:dim(2)-1
        if(im(i,j)==0 || im(i,j)==255)
            mask=im( (i-1):(i+1) , (j-1):(j+1) );
            im(i,j)=median(mask,"all");
        end
    end
end
im=im(2:dim(1)-1,2:dim(2)-1);
im=uint8(im);