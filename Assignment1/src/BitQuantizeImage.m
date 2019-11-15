function out = BitQuantizeImage(img,k)
im = imread(img);
%figure;
% subplot(121);
% imshow(im);
% title('Original Image');
im = double(im);
im = floor(bitsra(im,8-k));
tmp = 255/(2^k - 1);
im = im.*tmp;
out = uint8(im);
% subplot(122);
% imshow(im);
% title('Bit Quantized Image');
end