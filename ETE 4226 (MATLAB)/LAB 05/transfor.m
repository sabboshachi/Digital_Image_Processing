clc;
clear
sqsize = 60;
I = checkerboard(sqsize,4,4);
nrows = size(I,1);
ncols = size(I,2);
fill = 0.3;
subplot(2,2,1)
imshow(I)
title('Original')

scale = 1.5;        % scale factor
angle = 10*pi/180; % rotation angle
tx = 0;            % x translation
ty = 0;            % y translation
a = -1;            % -1 -> reflection, 1 -> no reflection

sc = scale*cos(angle);
ss = scale*sin(angle);

T = [   sc   -ss  0;
      a*ss  a*sc  0;
        tx    ty  1];
    
t_sim = affine2d(T);
I_similarity = imwarp(I,t_sim,'FillValues',fill);
subplot(2,2,2)
imshow(I_similarity)
title('Similarity')

T = [1  0.3  0; 
     1    1  0;
     0    0  1];
t_aff = affine2d(T);
I_affine = imwarp(I,t_aff,'FillValues',fill);
subplot(2,2,3)
imshow(I_affine)
title('Affine')

T = [1  0  0.002; 
     1  1  0.0002;
     0  0  1   ];
t_proj = projective2d(T);   

I_projective = imwarp(I,t_proj,'FillValues',fill);
subplot(2,2,4)
imshow(I_projective)
title('Projective')