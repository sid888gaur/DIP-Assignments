clc;close all;
im = imread('land.png');
im = rgb2gray(im);
m = size(im,1);n = size(im,2);
%im = double(im);
im_fft = fftshift(fft2(im));
figure;
subplot(121)
imshow(log(abs(im_fft)),[]);
title('Original FFT');

subplot(122);
imshow(im);
title('Original image');

F = ones(m,n);

for i=1:m
    for j=1:n
        if((54<=i) && (i<=143) && (86<=j) && (j<=177))
            continue;
        else
        F(i,j)=log(abs(im_fft(i,j)))<8;
        end
    end
end

filt_fft = im_fft.*F;

figure;
subplot(121);
imshow(F,[]);
title('Resultant FFT');

res = ifft2(ifftshift(filt_fft));
subplot(122);
imshow(res,[]);
title('Resultant image');