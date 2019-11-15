clc;close all;
im1 = imread('lowcon.jpg');im1 = rgb2gray(im1);
im2 = imread('highcon.jpg');im2 = rgb2gray(im2);

o1 = linContrastStretching(im1,0,255);
o2 = linContrastStretching(im2,0,255);
figure;
subplot(221);imhist(im1);title('low contrast input');
subplot(222);imhist(o1);title('output 1');
subplot(223);imhist(im2);title('high contrast input');
subplot(224);imhist(o2);title('output 2');

figure;
subplot(221);imshow(im1);title('low contrast input');
subplot(222);imshow(o1);title('output 1');
subplot(223);imshow(im2);title('high contrast input');
subplot(224);imshow(o2);title('output 2');