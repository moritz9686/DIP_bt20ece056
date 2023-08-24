% Digital Image Processing Matlab codes by 
% Mohit Chaudhary ( BT20ECE056 )

% Read the PNG image
imageData = imread('sample_image.png');

% Convert the image to grayscale
grayImage = rgb2gray(imageData);

% Display the original grayscale image
subplot(3, 3, 1);
imshow(grayImage);
title('Original Grayscale Image');

% Display each bit plane image
for bit = 1:8
    bitPlaneImage = bitget(grayImage, bit);
    subplot(3, 3, bit + 1);
    imshow(bitPlaneImage, []);
    title(['Bit Plane ', num2str(bit)]);
end

