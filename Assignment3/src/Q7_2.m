clc;close all;
im = imread('bricks.jpg'); im = rgb2gray(im);
im_fft = fftshift(fft2(im));
[m,n]=size(im);
D0=4;

s = SampleRate(im,4,4);
rs = imresize(s,[m,n]);

%% LPF
im_lp = imgaussfilt(im,4);

%% Comparison
figure;
imshowpair(rs,im_lp,'montage');
title('Comparison between Sampling and LPF');

%% SampleRate
function out = SampleRate(im,nx,ny)
m = size(im,1);n = size(im,2);
out = imresize(im,[m/nx n/ny]);
end