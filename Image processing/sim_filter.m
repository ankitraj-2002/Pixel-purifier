function [] = sim_filter(name,format,noisetype)

filters=["BmeanF","BMF","AMF","MDBUTMF","ARmF","DAMRmF","ATmF","GmF","MMF","MinF","MaxF"];
nof=length(filters)+1;

folder=[name,'_TestSmaple'];
psnr_mat=[];
ssim_mat=[];
mse_mat=[];
rmse_mat=[];
ief_mat=[];

factor=10:10:90;
for i=factor

    sub=[name,'_',noisetype,'_',num2str(i)];
    mkdir([folder,'\',noisetype],sub);
    psnr_vec=zeros(1,nof);
    ssim_vec=zeros(1,nof);
    mse_vec=zeros(1,nof);
    rmse_vec=zeros(1,nof);
    ief_vec=zeros(1,nof);


    im=(imread([name,'.',format]));
    imwrite(im,[folder,'\',noisetype,'\',sub,'\1_',name,'_',num2str(i),'_original_image.' , format]);


    nim=imnoise(im,noisetype,i/100);
    ssim1=ssim(nim,im);
    psnr1=psnr(nim,im);
    mse0=immse(nim,im);
    ief1=1;
    imwrite(nim,[folder,'\',noisetype,'\',sub,'\2_',name,'_',num2str(i),'_noisy_image.' , format]);
    psnr_vec(1)=psnr1;
    ssim_vec(1)=ssim1;
    mse_vec(1)=mse0;
    rmse_vec(1)=sqrt(mse0);
    ief_vec(1)=ief1;

    for f=1:length(filters)
        dnim=img_filter(filters(f),nim);
        ssim1=ssim(dnim,im);
        psnr1=psnr(dnim,im);
        mse1=immse(dnim,im);
        ief1=mse0/mse1;
        imwrite(dnim,[folder,'\',noisetype,'\',sub,'\',num2str(2+f),'_',name,'_',num2str(i),'_',convertStringsToChars(filters(f)),'.' , format]);
        psnr_vec(f+1)=psnr1;
        ssim_vec(f+1)=ssim1;
        mse_vec(f+1)=mse1;
        rmse_vec(f+1)=sqrt(mse1);
        ief_vec(f+1)=ief1;
    end

    psnr_mat=[psnr_mat;psnr_vec];
    ssim_mat=[ssim_mat;ssim_vec];
    mse_mat=[mse_mat;mse_vec];
    rmse_mat=[rmse_mat;rmse_vec];
    ief_mat=[ief_mat;ief_vec];
end
factor=transpose(factor);
t=table(factor,psnr_mat,ssim_mat,ief_mat,mse_mat,rmse_mat);
writetable(t,[folder,'\',noisetype,'\',name,'_',noisetype,'_TestSmaple.xlsx'])
t=readtable([folder,'\',noisetype,'\',name,'_',noisetype,'_TestSmaple.xlsx']);
t.Properties.VariableNames = header(filters);
writetable(t,[folder,'\',noisetype,'\',name,'_',noisetype,'_TestSmaple.xlsx'])