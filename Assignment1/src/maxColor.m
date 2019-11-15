function maxColor(src)
count = zeros(256,256,256);
r = src(:,:,1); g = src(:,:,2); b = src(:,:,3);
for i = 1:size(src,1)
    for j = 1:size(src,2)
        count(r(i,j)+1,g(i,j)+1,b(i,j)+1) = count(r(i,j)+1,g(i,j)+1,b(i,j)+1) + 1 ;
    end
end
maxc = -1; l=0;m=0;n=0;
for i = 1:256
    for j = 1:256
        for k = 1:256
            if(maxc<count(i,j,k))
                maxc = count(i,j,k);l=i-1;m=j-1;n=k-1;
            end
        end
    end
end
fprintf('Color [%d %d %d] occurs %d times.\n',l,m,n,maxc)
color = zeros(100,100,3);
for i = 1:100
    for j = 1:100
        color(i,j,1) = l; color(i,j,2) = m; color(i,j,3) = n;
    end
end
color = uint8(color);
imshow(color);
title('Dominating Color');
end