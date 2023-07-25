function [rm] = riesz_mean(mat,k)
% dim=size(mat);
% num=0;
% den=0;
% for s=1:dim(1)
%     for t=1:dim(2)
%         if (mat(s,t)~=0)&&(mat(s,t)~=255)
%             ps=pixel_similarity(s,t,k+1,k+1);
%             num=num+ps*mat(s,t);
%             den=den+ps;
%         end
%     end
% end
% rm=num/den;

dim=length(mat);
num=0;
den=0;
ps=pixel_similarity(k);
for s=1:dim
    for t=1:dim
        if (mat(s,t)~=0)&&(mat(s,t)~=255)
            num=num+ps(s,t)*mat(s,t);
            den=den+ps(s,t);
        end
    end
end
rm=num/den;