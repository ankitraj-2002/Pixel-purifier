a = imread("cameraman.tif");
an = imnoise(a,'gaussian',0,0.005);
%dwtmode("per");
%[thr, sorh, keepapp] = ddencmp('den','wv',an);
aden=wdenoise2(double(an),3,'Wavelet','coif5','NoiseEstimate','LevelDependent', ...
    'DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
%thr=[thr thr; thr thr; thr thr];
subplot(1,3,1);
imshow(a);
title('sexy');
subplot(1,3,2);
imshow(an);
title('not sexy');
subplot(1,3,3);
imshow(aden);
title('lil sexy');
%snr = 20*log10(norm(double(a(:)))/norm(double(img(:))-double(aden(:))));