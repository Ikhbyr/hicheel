a = imread('camerman.jpg');
a = rgb2gray(a);

b= edge(a, 'roberts');
c=edge(a,'sobel');
d=edge(a,'prewitt');
e=edge(a,'canny');
f=edge(a,'log');

subplot(2,3,1), imshow(a), title('Original Image');
subplot(2,3,2), imshow(b), title('Roberts');
subplot(2,3,3), imshow(c), title('Sobel');
subplot(2,3,4), imshow(d), title('Prewitt');
subplot(2,3,5), imshow(e), title('Canny');
subplot(2,3,6), imshow(f), title('Log');