function[nim]= periodic(img,val)
figure;
noise_level = val*100;
    [x,y] = meshgrid(1:size(img,2), 1:size(img,1));
    grating = sin(2*pi*y/32);
    nim = im2double(img) + (noise_level/100)*grating;
    nim(nim < 0) = 0;
    nim(nim > 1) = 1;
    nim = im2uint8(nim);
    

