function out = histMatching(im1,im2)
M = zeros(256,1,'uint8'); 
hist1 = imhist(im1); 
hist2 = imhist(im2);
cdf1 = cumsum(hist1) / numel(im1); %compute the cdf of im1
cdf2 = cumsum(hist2) / numel(im2); %compute the cdf of im2
 
for idx = 1 : 256
    diff = abs(cdf1(idx) - cdf2);
    [~,ind] = min(diff);
    M(idx) = ind-1;
end

%matching here
out = M(double(im1)+1);
end