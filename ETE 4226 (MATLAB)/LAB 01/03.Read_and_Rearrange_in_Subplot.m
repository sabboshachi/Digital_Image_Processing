clc;
clear;

img1 = imread('cell.tif')
img2 = imread('spine.tif')
img3 = imread('onion.png')

ax(1) = subplot(1,3,1), imshow(img1);
ax(2) = subplot(1,3,2), imshow(img2);
ax(3) = subplot(1,3,3), imshow(img3);

colormap(ax(1),gray);
colormap(ax(2),jet);
colormap(ax(3),gray);
