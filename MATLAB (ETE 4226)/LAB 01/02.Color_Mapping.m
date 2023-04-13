clc;
clear;

img= imread('onion.png');
imwrite(img,'example.png');
imshow('example.png')
colormap(gray);