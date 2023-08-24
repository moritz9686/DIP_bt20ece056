% Digital Image Processing Matlab codes by 
% Mohit Chaudhary ( BT20ECE056 )

% Read the PNG image
imageData = imread('sample_image.png');

% Convert the image to grayscale
grayImage = rgb2gray(imageData);

% Remove the least significant bit (LSB)
grayImageWithoutLSB = bitshift(grayImage, -1);

% Display the original grayscale image
subplot(1, 2, 1);
imshow(grayImage);
title('Original Grayscale Image');

% Display the grayscale image without LSB
subplot(1, 2, 2);
imshow(grayImageWithoutLSB);
title('Grayscale Image without LSB');

