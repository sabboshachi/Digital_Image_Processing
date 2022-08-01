I = imread('cameraman.tif');
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');



subplot(1,3,1);
imshow(I)
title('Original Image')

subplot(1,3,2);
imshow(BW1)
title('Sobel Filter')


subplot(1,3,3);
imshow(BW2)
title('Canny Filter')

