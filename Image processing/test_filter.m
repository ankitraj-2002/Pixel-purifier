clc
close all

name='img4';
format='jpeg';
SnP=80;


im=(imread([name,'.',format]));
subplot(2,4,1)
imshow(im)
title("Original Image")
% imwrite(im,[name,'_',num2str(SnP),'_original_image.' , format]);


nim=imnoise(im,"salt & pepper",SnP/100);
subplot(2,4,2)
imshow(nim)
ssim1=ssim(nim,im);
psnr1=psnr(nim,im);
title({['Noisy Image with SnP=',num2str(SnP),'%'];['\rmPSNR=',num2str(psnr1,'%.2f'),' SSIM=',num2str(ssim1,'%.2f')]});
% imwrite(nim,[name,'_',num2str(SnP),'_noisy_image_' , num2str(psnr1) , '_' , num2str(ssim1) , '.' , format]);


dnim=img_filter('BmF',nim);
subplot(2,4,3)
imshow(dnim)
ssim1=ssim(dnim,im);
psnr1=psnr(dnim,im);
title({'Basic Mean Filter',['\rmPSNR=',num2str(psnr1,'%.2f'),' SSIM=',num2str(ssim1,'%.2f')]})
% imwrite(dnim,[name,'_',num2str(SnP),'_BmF_' , num2str(psnr1) , '_' , num2str(ssim1) , '.' , format]);


dnim=img_filter('BMF',nim);
subplot(2,4,4)
imshow(dnim)
psnr1=psnr(dnim,im);
ssim1=ssim(dnim,im);
title({'Basic Median Filter',['\rmPSNR=',num2str(psnr1,'%.2f'),' SSIM=',num2str(ssim1,'%.2f')]})
% imwrite(dnim,[name,'_',num2str(SnP),'_BMedianF_' , num2str(psnr1) , '_' , num2str(ssim1) , '.' , format]);


dnim=img_filter('AMF',nim);
subplot(2,4,6)
imshow(dnim)
ssim1=ssim(dnim,im);
psnr1=psnr(dnim,im);
title({'Adaptive Median Filter',['\rmPSNR=',num2str(psnr1,'%.2f'),' SSIM=',num2str(ssim1,'%.2f')]});
% imwrite(dnim,[name,'_',num2str(SnP),'_AMF_' , num2str(psnr1) , '_' , num2str(ssim1) , '.' , format]);


dnim=img_filter('MDBUTMF',nim);
subplot(2,4,5)
imshow(dnim)
ssim1=ssim(dnim,im);
psnr1=psnr(dnim,im);
title({'Modified Dicision Based';'Unsymmetric Trimmed Median Filter';['\rmPSNR=',num2str(psnr1,'%.2f'),' SSIM=',num2str(ssim1,'%.2f')]});
% imwrite(dnim,[name,'_',num2str(SnP),'_MDBUTMF_' , num2str(psnr1) , '_' , num2str(ssim1) , '.' , format]);


dnim=img_filter('ARmF',nim);
subplot(2,4,7)
imshow(dnim)
ssim1=ssim(dnim,im);
psnr1=psnr(dnim,im);
title({'Adaptive Riesz mean filter',['\rmPSNR=',num2str(psnr1,'%.2f'),' SSIM=',num2str(ssim1,'%.2f')]})
% imwrite(dnim,[name,'_',num2str(SnP),'_ARmF_' , num2str(psnr1) , '_' , num2str(ssim1) , '.' , format]);


dnim=img_filter('DAMRmF',nim);
subplot(2,4,8)
imshow(dnim)
ssim1=ssim(dnim,im);
psnr1=psnr(dnim,im);
title({'Different Adaptive Modified Riesz Mean Filter',['\rmPSNR=',num2str(psnr1,'%.2f'),' SSIM=',num2str(ssim1,'%.2f')]})
% imwrite(dnim,[name,'_',num2str(SnP),'_DAMRmF_' , num2str(psnr1) , '_' , num2str(ssim1) , '.' , format]);