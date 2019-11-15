clc;clear all;
im = imread('lena.jpg');
im = rgb2gray(im);
o1=piecewiseTransform(im, [0 4/3 -2 0], [0 0 2 0], [0 0.3 0.6 0.8], [0.3 0.6 0.8 1]);
o2=piecewiseTransform(im, [0 0 0 0 0], [0 0.2 0.4 0.6 0.8], [0 0.2 0.4 0.6 0.8], [0.2 0.4 0.6 0.8 1]); 

subplot(131);imshow(im);title('original');
subplot(132);imshow(o1);title('output-1');
subplot(133);imshow(o2);title('output-2');