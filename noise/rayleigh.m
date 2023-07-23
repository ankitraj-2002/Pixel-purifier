function[nim]= rayleigh(im,val)
rayleigh_param = val*100;
rayleigh_noise = raylrnd(rayleigh_param, size(im));
nim = im + uint8(rayleigh_noise);

