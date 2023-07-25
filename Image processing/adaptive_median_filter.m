function [nim] = adaptive_median_filter(nim,t)
dim=size(nim);
tmat=t_symmetric_pad_matrix(nim,t);
for i=1:dim(1)
    for j=1:dim(2)
        for k=1:t
            kmat=k_approximate_matrix(tmat,t,i,j,k);
            mini=min(min(kmat));
            maxi=max(max(kmat));
            med=median(kmat,"all");
            if (mini<med && med<maxi) && (nim(i,j)==mini || nim(i,j)==maxi)
                nim(i,j)=med;
            end
        end
    end
end