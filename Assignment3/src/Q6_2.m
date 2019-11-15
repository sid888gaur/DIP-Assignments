clc;close all;
im = imread('cameraman.tif');
k = 6; i=1;
plot_1 = zeros(k,1);
plot_2 = zeros(k,1);
[m,n] = size(im);
scale = zeros(k,1); scale(1) = m;

while(i<=k)
    [plot_1(i),plot_2(i)] = conThom(im,im);
    m = m+25; scale(i) = m;i = i+1;
    im = imresize(im,[m,m]);
end

plot(scale,plot_1,'r');
hold on;
plot(scale,plot_2,'b');
xlabel('Image Size');
ylabel('Time');