Image = imread('camerman.jpg');
subplot(2,2,1),imshow(Image)
title('Original Image');

Noise_level = 0.3;
Noisy_image = imnoise(Image, 'salt & pepper', Noise_level);
subplot(2,2,2),imshow(Noisy_image)
title('Corrupted with salt and pepper noise');



Output_med = medfilt2(Noisy_image,[3 3]);
subplot(2,2,4),imshow(Output_med)
title('Image filterd by Median filter');