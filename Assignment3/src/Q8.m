clc; close all;
im = imread('rectangle.jpg');
%im = rgb2gray(im);
%im = im2double(im);
F_orig = fft2(im);
F_orig = fftshift(F_orig);
imshow(log(abs(F_orig)),[]);
title('Original rectangle');

im_rot = imrotate(im,90);
F_rot = fft2(im_rot);
F_rot = fftshift(F_rot);
figure;
imshow(log(abs(F_rot)),[]);
title('Rotated rectangle');

im_trans = imtranslate(im,[20,50],'FillValues',0);
F_trans = fft2(im_trans);
F_trans = fftshift(F_trans);
figure;
imshow(log(abs(F_trans)),[]);
title('Translated rectangle');