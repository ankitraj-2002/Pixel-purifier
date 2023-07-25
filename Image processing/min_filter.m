function[ni]= min_filter(ni)
[a,b]=size(ni);
tmat=t_symmetric_pad_matrix(ni,1);
for i=1:a
    for j=1:b
        kmat=k_approximate_matrix(tmat,1,i,j,1);
        mini=255;
        for m=1:3
            for n=1:3
                if ~(kmat(m,n)==0 || kmat(m,n)==255) && kmat(m,n)<mini
                    mini=kmat(m,n);
                end
            end
        end
        ni(i,j)=mini;
    end
end