function [nim] = adaptive_riesz_mean_filter(nim)
nim=double(nim);
dim=size(nim);
bmat=binary_matrix(nim);
for t=5:-1:1
    tmat=t_symmetric_pad_matrix(nim,t);
    btmat=t_symmetric_pad_matrix(bmat,t);
    for i=1:dim(1)
        for j=1:dim(2)
            if bmat(i,j)==1
                for k=1:t
                    bkmat=k_approximate_matrix(btmat,t,i,j,k);
                    if ~all(bkmat,"all")
                        kmat=k_approximate_matrix(tmat,t,i,j,k);
                        nim(i,j) = riesz_mean(kmat,k);
                    end
                end
            end
        end
    end
end
nim=uint8(nim);