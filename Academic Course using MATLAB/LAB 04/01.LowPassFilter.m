img = imread('cameraman.tif');

imgd = im2double(img);   % imgd in [0,1]

f = ones(6,6)/36;

img1 = filter2(f, imgd);
subplot(121);imshow(img);
subplot(122);imshow(img1);