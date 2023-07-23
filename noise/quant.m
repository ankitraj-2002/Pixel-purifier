function[nim] = quant(im,val);
figure;
    n_levels = floor(max(size(im))/ val);
    q_noise = randn(size(im)) * n_levels / 256;
    nim = im2double(im) + q_noise;
    nim = im2uint8(nim / max(nim(:)));
