function [t1,t2] = conThom(im1,im2)

if(size(im1,3)==3)
    im1 = rgb2gray(im1);
end
if(size(im2,3)==3)
    im2 = rgb2gray(im2);
end

m1 = size(im1,1);n1 = size(im1,2);
m2 = size(im2,1);n2 = size(im2,2);

tic
res1 = conv2(im1,im2);
t1 = toc;
%fprintf('Time elapsed in Convolution \t = %2.6f\n',toc);

tic
im1 = padarray(im1,[m2-1 n2-1],'post');
im2 = padarray(im2,[m1-1 n1-1],'post');

fft_1 = fftshift(fft2(im1));
fft_2 = fftshift(fft2(im2));

fft_res = fft_1.*fft_2;
res2 = ifft2(ifftshift(fft_res));
t2 = toc;
%fprintf('Time elapsed in FFT \t = %2.6f\n',toc);

%diff = imabsdiff(res1,res2);
%imshowpair(res1,res2,'montage');
fprintf('Error between both outputs: ');
display(immse(res1,res2));
end