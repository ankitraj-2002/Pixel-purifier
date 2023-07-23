clc
im =imread("cameraman.tif");
% imshow(im);
nim = imnoise2(im,"brownian",1);
imshow(nim)