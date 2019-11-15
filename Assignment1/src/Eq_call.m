im1 = imread('lena.jpg'); im1 = rgb2gray(im1);
im2 = imread('canyon.png'); im2 = rgb2gray(im2);
im3 = imread('church.png'); im3 = rgb2gray(im3);
o1 = histEqualization(im1);
o2 = histEqualization(im2);
o3 = histEqualization(im3);

subplot(321);imshow(im1);title('input-1');
subplot(322);imshow(o1);title('output-1');
subplot(323);imshow(im2);title('input-2');
subplot(324);imshow(o2);title('output-2');
subplot(325);imshow(im3);title('input-3');
subplot(326);imshow(o3);title('output-3');

figure;
subplot(321);imhist(im1);title('input-1');
subplot(322);imhist(o1);title('output-1');
subplot(323);imhist(im2);title('input-2');
subplot(324);imhist(o2);title('output-2');
subplot(325);imhist(im3);title('input-3');
subplot(326);imhist(o3);title('output-3');