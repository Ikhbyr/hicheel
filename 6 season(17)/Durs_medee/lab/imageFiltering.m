% read the Test image and display it

  mygrayimg=imread('camerman.jpg');
  mygrayimg=imresize(mygrayimg,[256 256]);
  subplot(3,3,1),imshow(mygrayimg), title('Original image');
    img = im2double(mygrayimg);

% Create Noisy Image

  noisyimg = imnoise(mygrayimg,'Salt & Pepper', 0.5);
  subplot(3,3,2),imshow(noisyimg);
  title('Noisy Image');

% Create Wiener filter with 5 x 5 mask
% Apply Wiener filter to the test image

  


% Create Gaussian blur
% The command fspecial() is used to create mask and imfilter() is used
% to apply it. The command edgetaper is used to blur the edges
% Display the blurred image

  gausspsf = fspecial('gaussian',[64,64],5);
  subplot(3,3,5),imshow(gausspsf,[]);
  title('Gaussian PSF');

% Create motion Blur
% The command fspecial() is used to create mask and imfilter() is used
% to apply it. The command edgetaper is used to blur the edges
% Display the blurred image

  motionpsf = fspecial('motion',64,64);
  subplot(3,3,6),imshow(motionpsf,[]);
  title('Motion PSF');
 
  gaussblur = imfilter(mygrayimg,gausspsf);
  y1 = edgetaper(mygrayimg,gausspsf);
  subplot(3,3,7), imshow(gaussblur);
  title('Gaussian Blurred Image');


  % The original image is retrieved from the blurred image using the
  % command blind deconvolution and display it

  randpsf =rand(64);
  retrievedimg1 = deconvblind(y1,randpsf);
  subplot(3,3,8),imshow(retrievedimg1);
  title('Blind deconvolution(random)');

  % The original image is retrieved from the blurred image using the
  % command blind deconvolution and display it

  retrievedimg2 = deconvblind(y1,gausspsf);
  subplot(3,3,9),imshow(retrievedimg2);
  title('Blind deconvolution');