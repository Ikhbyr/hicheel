s = imread('photo.tif');
subplot(121),imshow(s);title('Original image');
b=imadjust(2.4);
b = imread('photo.tif');
subplot(122),imshow(b);title('Enhanced Image');