function mergeImage(im1,im2)
A = imread(im1); B = imread(im2);
%% Finding maximum occuring color %%
count = zeros(256,256,256);
r = double(A(:,:,1)); 
g = double(A(:,:,2)); 
b = double(A(:,:,3));
for i = 1:size(A,1)
    for j = 1:size(A,2)
        count(r(i,j)+1,g(i,j)+1,b(i,j)+1) = count(r(i,j)+1,g(i,j)+1,b(i,j)+1) + 1 ;
    end
end
maxc=-1; l=0;m=0;n=0;
for i = 1:256
    for j = 1:256
        for k = 1:256
            if(maxc<count(i,j,k))
                maxc = count(i,j,k);l=i-1;m=j-1;n=k-1;
            end
        end
    end
end
%fprintf('%d %d %d\n',l,m,n);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Masking and replacement %%
for i = 1:size(A,1)
    for j = 1:size(A,2)
        
        if(((r(i,j)-l)^2 + (g(i,j)-m)^2 + (b(i,j)-n)^2)>35000)
            B(i,j,:) = A(i,j,:);
        end
    end
end
figure;
imshow(B);
end