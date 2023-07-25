function[sum]=trimmed_mean_calculator(mat,d)
matlen=length(mat);
uplim=matlen-floor(d/2);
lowlim=floor(d/2);
mean_ans=0;
for i=lowlim:uplim
    mean_ans=mean_ans+mat(i);
end
sum=mean_ans;