function final = negative(img,I)
%img = imread(im);
%img = rgb2gray(img);
% figure;
% subplot(121);
% imshow(img);
title('Original');
final = uint8(zeros(size(img,1),size(img,2)));
for i = 1:size(img,1)
    for j = 1:size(img,2)
        final(i,j) = I - img(i,j);
    end
end

% subplot(122);
% imshow(final);
end