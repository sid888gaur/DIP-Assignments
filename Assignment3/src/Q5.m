clc;close all;
im = imread('bricks.jpg');
im = rgb2gray(im);
im = im2double(im);
m = size(im,1);n=size(im,2);
h = [0 1 0;1 2 1;0 1 0];

im_fft = fftshift(fft2(double(im),m,n));
h_fft = fftshift(fft2(double(h),m,n));

res_fft = h_fft.*im_fft;
res = ifft2(ifftshift(res_fft));

figure;
subplot(121);imshow(im,[]);title('Original');
subplot(122);imshow(res,[]);title('Resultant');

figure;
subplot(121);imshow(log(abs(im_fft)),[]);title('Original FFT');
subplot(122);imshow(log(abs(res_fft)),[]);title('Resultant FFT');

figure;
imshow(log(abs(h_fft)),[]);