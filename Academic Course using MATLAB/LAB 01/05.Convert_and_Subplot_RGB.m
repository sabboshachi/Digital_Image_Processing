clc;
clear;

rgbImage = imread('onion.png');

% Extract color channels.
redChannel = rgbImage(:,:,1); 
greenChannel = rgbImage(:,:,2);
blueChannel = rgbImage(:,:,3);

% Create an all black channel.
allBlack = zeros(size(rgbImage, 1),size(rgbImage, 2), 'uint8');
just_red = cat(3, redChannel, allBlack, allBlack);
just_green = cat(3, allBlack, greenChannel, allBlack);
just_blue = cat(3, allBlack, allBlack, blueChannel);

%plot all images
subplot(2, 1, 1);
imshow(rgbImage);
fontSize = 20;
title('ORIGINAL IMAGE', 'FontSize', fontSize);

subplot(2, 3, 4);
imshow(just_red);
title('RED', 'FontSize', fontSize);

subplot(2, 3, 5);
imshow(just_green);
title('GREEN', 'FontSize', fontSize);

subplot(2, 3, 6);
imshow(just_blue);
title('BLUE', 'FontSize', fontSize);
