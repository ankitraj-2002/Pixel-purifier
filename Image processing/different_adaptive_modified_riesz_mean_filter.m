function [nim] = different_adaptive_modified_riesz_mean_filter(nim)

dim=size(nim);
bmat=binary_matrix(nim);
for t=5:-1:1
    tmat=t_symmetric_pad_matrix(nim,t);
    for i=1:dim(1)
        for j=1:dim(2)
            if bmat(i,j)
                for k=1:t
                    kmat=k_approximate_matrix(tmat,t,i,j,k);
                    med=median(kmat,"all");
                    if (0<med && med<255) && (nim(i,j)==0 || nim(i,j)==255)
                        nim(i,j)=modified_riesz_mean(kmat,k);
                        break
                    end
                end
            end
        end
    end
end

