function [nim] = imnoise2(im,noise_type,val)

switch lower(noise_type)
    case 'gaussian'
        nim = imnoise(im,"gaussian",val);
    case 'impulse'
        nim = imnoise(im,"salt & pepper",val);
    case 'periodic'
        nim = periodic(im,val);
    case 'poission'
        nim = imnoise(im,"poisson");
    case 'speckle'
        nim = imnoise(im,"speckle",val);
    case 'gamma'
        nim = gamma_nim(im,val);
    case 'rayleigh'
        nim = rayleigh(im,val);
    case 'quantization'
        nim = quant(im,val);
    case 'brownian'
        nim = brownian(im,val);
    case 'rician'
        nim = rician(im,val);
end