clc;close all;
ref = imread('canyon.png'); ref = rgb2gray(ref);
a = imread('part1.png'); a = rgb2gray(a);
b = imread('part2.png'); b = rgb2gray(b);
c = imread('part3.png'); c = rgb2gray(c);
d = imread('part4.png'); d = rgb2gray(d);

p1 = histMatching(a,ref((1:174),(1:388),:));
p2 = histMatching(b,ref((1:174),(389:775),:));
p3 = histMatching(c,ref((175:334),(1:388),:));
p4 = histMatching(d,ref((175:334),(389:775),:));

n1 = cat(1,p1,p3);
n2 = cat(1,p2,p4);
n3 = cat(2,n1,n2);
%ref2 = rgb2gray(ref);

figure;
subplot(121);
imshow(ref);
title('Original');
subplot(122);
imshow(n3);
title('Resultant');