clc;close all;
a = imread('eye.png'); b = imread('eyeref.png');
im1 = rgb2gray(a); im2 = rgb2gray(b);
o = histMatching(im1,im2);


figure; 
subplot(1,3,1),imshow(im1);
title('original');
subplot(1,3,2),imshow(im2);
title('reference');
subplot(1,3,3),imshow(o);
title('Histogram matched ');

figure; 
subplot(1,3,1),imhist(im1);
title('original');
subplot(1,3,2),imhist(im2);
title('reference');
subplot(1,3,3),imhist(o);
title('Histogram matched ');