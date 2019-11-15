clc;close all;
im = imread('bricks.jpg'); im = rgb2gray(im);
[m,n]=size(im);

s1 = SampleRate(im,2,2);
s2 = SampleRate(im,3,3);
s3 = SampleRate(im,4,4);
s4 = SampleRate(im,5,5);
s5 = SampleRate(im,6,6);
s6 = SampleRate(im,7,7);

rs1 = imresize(s1,[m,n]);
rs2 = imresize(s2,[m,n]);
rs3 = imresize(s3,[m,n]);
rs4 = imresize(s4,[m,n]);
rs5 = imresize(s5,[m,n]);
rs6 = imresize(s6,[m,n]);

figure();imshowpair(im,rs1,'montage');
figure();imshowpair(im,rs2,'montage');
figure();imshowpair(im,rs3,'montage');
figure();imshowpair(im,rs4,'montage');
figure();imshowpair(im,rs5,'montage');
figure();imshowpair(im,rs6,'montage');

function out = SampleRate(im,nx,ny)
m = size(im,1);n = size(im,2);
out = imresize(im,[m/nx n/ny]);
end