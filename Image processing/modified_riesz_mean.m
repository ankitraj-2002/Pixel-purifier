function [mrm] = modified_riesz_mean(mat,k)
dim=length(mat);
num=0;
den=0;
pw=pixel_weight(k);
for s=1:dim
    for t=1:dim
        if (mat(s,t)~=0)&&(mat(s,t)~=255)
            num=num+pw(s,t)*mat(s,t);
            den=den+pw(s,t);
        end
    end
end
mrm=num/den;