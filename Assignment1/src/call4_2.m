clc;clear all;
im = imread('gamma-corr.png');
o1 = gammaTransform(im,0.5);
o2 = gammaTransform(im,0.9);
o3 = gammaTransform(im,10);

subplot(221);imshow(im);title('original');
subplot(222);imshow(o1);title('gamma = 0.5')
subplot(223);imshow(o2);title('gamma = 0.9')
subplot(224);imshow(o3);title('gamma = 1.2')