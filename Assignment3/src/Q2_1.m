clc; close all;
im = imread('lena.jpg');
im = rgb2gray(im);
im = im2double(im);
m = size(im,1);n=size(im,2);
im_fft = fftshift(fft2(im));

D0 = 30; k=1;
%% Ideal Low pass %%
lp = zeros(m,n);
for i=1:m
    for j=1:n
        D = sqrt((i-m/2)^2 + (j-n/2)^2);
        if(D<=D0)
            lp(i,j) = 1;
        else
            lp(i,j) = 0;
        end
    end
end
ff = fftshift(fft2(lp));
lp_fft=im_fft.*lp;
im_lp = ifft2(ifftshift(lp_fft));
figure();
imshow(log(abs(im_lp)),[]);
title('Ideal Low Pass Filter');

%% Butterworth %%
bw = zeros(m,n);
for i=1:m
    for j=1:n
        D = sqrt((i-m/2)^2 + (j-n/2)^2);
        bw(i,j) = 1/(1+(D/D0)^(2*k));    %Requires D0 and k
    end
end
bw_fft = im_fft.*bw;
im_bw = ifft2(ifftshift(bw_fft));
figure();
imshow(log(abs(im_bw)),[]);
title('Butterworth Filter');

%% Gaussian %%
gg = zeros(m,n);
for i=1:m
    for j=1:n
        D = sqrt((i-m/2)^2 + (j-n/2)^2);
        gg(i,j) = exp(-D^2/(2*D0^2));    %Requires D0 only
    end
end
gg_fft = im_fft.*gg;
im_gg = ifft2(ifftshift(gg_fft));
figure();
imshow(log(abs(im_gg)),[]);
title('Gaussian low pass Filter');