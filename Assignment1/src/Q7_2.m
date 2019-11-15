clc;close all;
s = imread('canyon.png'); d = imread('dark.jpg'); b = imread('bright.jpg');
s = rgb2gray(s); d = rgb2gray(d); b = rgb2gray(b);
o1=histMatching(s,s); %similar hist
o2=histMatching(d,b); %dark-light
o3=histMatching(b,d); %light-dark

subplot(331);imshow(s);title('original');
subplot(332);imshow(s);title('reference');
subplot(333);imshow(o1);title('resultant-1');
subplot(334);imshow(d);title('original');
subplot(335);imshow(b);title('reference');
subplot(336);imshow(o2);title('resultant-2');
subplot(337);imshow(b);title('original');
subplot(338);imshow(d);title('reference');
subplot(339);imshow(o3);title('resultant-3');