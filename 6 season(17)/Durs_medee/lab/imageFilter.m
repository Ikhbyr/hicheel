img = imread('camerman.jpg');
a = rgb2gray(img);

img = im2double(img);
f= ones(3,3)/9;

x=img;
[r,c]=size(img);
factor = 3;
for i=1:r
    for j= 1:c
        x(i,j)=factor*log(1+img(i,j));
    end
end

h=fspecial('gaussian',15,2);
Blurred = imfilter(img,h,'circular');
noise = 0.001*randn(size(img));
g = Blurred + noise;

Noise_level = 0.3;
e = imnoise(img, 'salt & pepper', Noise_level);

f=edge(a,'log');

gausspsf = fspecial('gaussian',[64,64],5);
gaussblur = imfilter(img,gausspsf);
y1 = edgetaper(img,gausspsf);

randpsf =rand(64);
retrievedimg1 = deconvblind(y1,randpsf);
subplot(3,3,8),imshow(retrievedimg1);
title('Blind deconvolution(random)');

retrievedimg2 = deconvblind(y1,gausspsf);
subplot(3,3,9),imshow(retrievedimg2);
title('Blind deconvolution');

subplot(3,3,1), imshow(a), title('Original Image');
subplot(3,3,2), imshow(img), title('filter2');
subplot(3,3,3), imshow(x), title('Transformation');
subplot(3,3,4), imshow(g), title('filter4');
subplot(3,3,5), imshow(e), title('Noisy Image');
subplot(3,3,6), imshow(f), title('Log');
subplot(3,3,7), imshow(gaussblur), title('Gaussian Blurred Image');