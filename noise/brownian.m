function[nim]= brownian(img,val)

img = im2double(img);
alpha = val*2.1;
N = size(img, 1);
dt = 1;

% Generate the Brownian noise
B = zeros(N);
for i = 2:N
    dB = sqrt(dt)*randn;
    B(i,:) = B(i-1,:) - alpha*(B(i-1,:))*dt + dB;
end
nim = img + B;

