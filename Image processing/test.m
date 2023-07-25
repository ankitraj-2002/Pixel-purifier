clc
close all

im=imread('img4.jpeg');
nim=imnoise(im,'salt & pepper',0.9);
subplot(121)
imshow(nim)
psnr(nim,im)

subplot(122)
dnim=img_filter('BMF',nim);
imshow(dnim)
psnr(dnim,im)