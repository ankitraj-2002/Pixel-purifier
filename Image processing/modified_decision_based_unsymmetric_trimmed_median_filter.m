function [nim] = modified_decision_based_unsymmetric_trimmed_median_filter(nim)

tmat=t_symmetric_pad_matrix(nim,1);
bmat=binary_matrix(nim);
btmat=t_symmetric_pad_matrix(bmat,1);
dim=size(nim);
for i=1:dim(1)
    for j=1:dim(2)
        if bmat(i,j)
            bkmat=k_approximate_matrix(btmat,1,i,j,1);
            kmat=k_approximate_matrix(tmat,1,i,j,1);
            if all(bkmat,"all")
                nim(i,j)=mean(kmat,"all");
            else
                for index=1:9
                    if (kmat(index)==255) || (kmat(index)==0)
                        kmat(index)=nan;
                    end
                end
                nim(i,j)=median(kmat,'all','omitnan');
            end
        end
    end
end