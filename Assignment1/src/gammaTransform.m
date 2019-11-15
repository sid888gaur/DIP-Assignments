function final = gammaTransform(img,Y)
%img = imread(im);
% figure;
% subplot(121);
% imshow(img);
final = uint8(zeros(size(img,1),size(img,2)));
for i = 1:size(img,1)
    for j = 1:size(img,2)
        final(i,j) = double(double(img(i,j))^Y);
    end
end
%sho = uint8(final*255);
% subplot(122);
% imshow(final);
end