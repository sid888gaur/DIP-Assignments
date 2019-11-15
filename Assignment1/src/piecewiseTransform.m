function out = piecewiseTransform(img,k1,k2,a,b)
% img = imread(im);
% img = rgb2gray(img);
final = im2double(img);
num = size(k1,2);
for n = 1:num
    for i = 1:size(img,1)
        for j = 1:size(img,2)
            if(final(i,j)>a(1,n) && final(i,j)<b(1,n))
                final(i,j) = final(i,j)*k1(1,n) + k2(1,n);
            end
        end
    end
end
out = uint8(final*255);
% figure;
% imshow(out);
end