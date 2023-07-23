function[nim]= rician(img,val)
figure;
    s =val* double(max(img(:)));
    r = s / sqrt(2);
    noise = r * (randn(size(img)) + 1i * randn(size(img)));
    nim = double(img) + real(noise);
    nim = uint8(max(min(nim, 255), 0));

