clc;
clear;

taken_image = imread('onion.png');
gray = rgb2gray(taken_image);

imshow(gray)