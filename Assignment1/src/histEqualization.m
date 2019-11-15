function imgHistogramed = histEqualization(img)
numofpixels=size(img,1)*size(img,2);
% figure;
% subplot(121);
% imshow(img);
% title('Original Image');

imgHistogramed=uint8(zeros(size(img,1),size(img,2)));
freq=zeros(256,1);
probf=zeros(256,1);
probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);

for i=1:size(img,1)
    for j=1:size(img,2)
        value=img(i,j);
        freq(value+1)=freq(value+1)+1;
        probf(value+1)=freq(value+1)/numofpixels;
    end
end

sum=0;
 
for i=1:size(freq)
   sum=sum+freq(i);
   cum(i)=sum;
   probc(i)=cum(i)/numofpixels;
   output(i)=round(probc(i)*255);
end
 
for i=1:size(img,1)
    for j=1:size(img,2)
            imgHistogramed(i,j)=output(img(i,j)+1);
    end
end
% subplot(122);
% imshow(imgHistogramed);
% title('Resultant Image');
end