function out = linContrastStretching(im,a,b)
%im = imread(img);
%im = rgb2gray(img);
min = 256; max = -1;
for i = 1:size(im,1) %min and max intensities
    for j = 1:size(im,2)
        if(min > im(i,j))
            min = im(i,j);
        end
        if(max < im(i,j))
            max = im(i,j);
        end
    end
end

out = uint8(zeros(size(a,1),size(a,2)));
%fprintf('Max = %d Min = %d \n',max,min)
for i = 1:size(im,1) %mapping with new intensities
    for j = 1:size(im,2)
        out(i,j) = a + (im(i,j) - min)*((b-a)/(max-min));
    end
end

end