I = imread('kobi.png');
J = imnoise(I,'salt & pepper',0.5);

% filter each channel separately
r = medfilt2(J(:, :, 1), [3 3]);
g = medfilt2(J(:, :, 2), [3 3]);
b = medfilt2(J(:, :, 3), [3 3]);

% reconstruct the image from r,g,b channels
K = cat(3, r, g, b);

figure
subplot(121);imshow(J);
subplot(122);imshow(K);