clc;close all;
im = imread('canyon.png');
img = rgb2gray(im);
a = histEqualization(img);
b = histEqualization(a);

subplot(231);
imshow(img);
title('original');
subplot(232);
imshow(a);
title('1st Equalization');
subplot(233);
imshow(b);
title('2nd Equalization');
subplot(234);
imhist(img);
title('original');
subplot(235);
imhist(a);
title('1st Equalization');
subplot(236);
imhist(b);
title('2nd Equalization');