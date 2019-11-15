clc;close all;
im = imread('cameraman.tif');
im1 = double(im);

x = FFT(im1.').';
y = FFT(x);

subplot(121);imshow(log(abs(y)),[]);title('Implemented FFT');

subplot(122);imshow(log(abs(fft2(im))),[]);title('Inbuilt FFT');

