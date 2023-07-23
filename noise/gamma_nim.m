function[nim]= gamma_nim(im,val)
gamma_noise = gamrnd(1,val*100, size(im));
nim = im + uint8(gamma_noise);

