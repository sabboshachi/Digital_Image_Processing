I = imread('onion.png');


subplot(2,2,1)
imshow(I)
title('Original Image')

subplot(2,2,2)
imhist(I,64)
title('HIstogram of Original Image')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

J = histeq(I);
subplot(2,2,3)
imshow(J)
title('Equalized Image')

subplot(2,2,4)
imhist(J,64)
title('HIstogram of Equalized Image')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%