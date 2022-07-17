I=imread('cameraman.tif')
J=imcomplement(I)
imshowpair(I,J,'montage')
