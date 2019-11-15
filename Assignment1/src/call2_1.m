clc;clear all;
im = imread('lena.jpg');
im = rgb2gray(im);
out = linContrastStretching(im,0,255);
cbari = colorbar(im,4);
cbaro = colorbar(out,4);

figure;
subplot(221);imshow(im);title('Original');
subplot(222);imshow(out);title('Resultant');
subplot(223);imshow(cbari);title('Colorbar: input');
subplot(224);imshow(cbaro);title('Colorbar: outuput');