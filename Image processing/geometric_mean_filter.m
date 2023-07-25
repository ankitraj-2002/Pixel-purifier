function [im]=geometric_mean_filter(im)
dim=size(im);
tmat=t_symmetric_pad_matrix(im,1);
for i=1:dim(1)
    for j=1:dim(2)
        kmat=k_approximate_matrix(tmat,1,i,j,1);
        res=1;
        count=0;
        for m=1:3
            for n=1:3
                if ~(kmat(m,n)==0)||(kmat(m,n)==255)
                    res=res*kmat(m,n);
                    count=count+1;
                end
            end
        end
        if count
            res=res^(1/count);
        end
         im(i,j)=res;
    end
end
im=uint8(im);