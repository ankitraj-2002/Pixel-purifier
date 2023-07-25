function[mat] = recur_spline_interpol(mat)
bmat = binary_matrix(mat);
sz = size(mat);
for i = 2:sz(1)-1
    for j = 2:sz(2)-1
        if(bmat(i,j))

            mask_chk=bmat( (i-1):(i+1) , (j-1):(j+1) );
            mask = mat( (i-1):(i+1) , (j-1):(j+1) );

            if(mask_chk==ones(3))
                mat(i,j)=test_case1(mask);
%                 bmat(i,j)=0;
            

            elseif((mask_chk(2,3))&&(mask_chk(3,1))&&(mask_chk(3,2))&&(mask_chk(3,3)))
                mat(i,j)=test_case2(mask,mask_chk);
%                 bmat(i,j)=0;

            else
                mat(i,j)=test_case3(mask,mask_chk);
%                 bmat(i,j)=0;
            end
        end
    end
end

            

