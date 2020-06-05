a=imread("camerman.jpg")
img = rgb2gray(a);
subplot(221),imshow(a);title('Original image');
b=imnoise(img,'salt & pepper',0.1),
subplot(222),imshow(b);title('Noisy image');
[m,n] = size(img);
output = zeros(m,n);
for i=1:m
    for j=1:n
    rmin=max(1,i-1);
    rmax = min(m,i+1);
    cmin=max(1,j-1);
    cmax = min(n,j+1);
    
    temp = img(rmin:rmax, cmin:cmax);
    output(i,j) = mean(temp(:));
    end
end

output = uint8(output);
[x,y]=size(b);

out = zeros(x,y);
out = uint8(out);
for l=1:x
    for h=1:y
    xmin= max(1,l-1);
    xmax = min(x,l+1);
    ymin = max(1,h-1);
    ymax = min(y,h+1);
    
    temp1 = b(xmin:xmax, ymin:ymax);
    out(l,h) = median(temp1(:));
    end
end

figure(1)
subplot(223),imshow(output);title('Smooting filter output');
subplot(224),imshow(out);title('Median filter output');