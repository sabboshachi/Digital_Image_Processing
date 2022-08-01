A=imread('kobi.png');

subplot(2,4,1);
B=double(bitget(A,1));
imshow((B));
title('Bit plane 1 : LSB ', 'FontSize', 20);

 
subplot(2,4,2);
B=double(bitget(A,2));
imshow((B));
title('Bit plane 2', 'FontSize', 20);

 
subplot(2,4,3);
B=double(bitget(A,3));
imshow((B));
title('Bit plane 3', 'FontSize', 20);

 
subplot(2,4,4);
B=double(bitget(A,4));
imshow((B));
title('Bit plane 4', 'FontSize', 20);

 
subplot(2,4,5);
B=double(bitget(A,5));
imshow((B));
title('Bit plane 5', 'FontSize', 20);

 
subplot(2,4,6);
B=double(bitget(A,6));
imshow((B));
title('Bit plane 6', 'FontSize', 20);

 
subplot(2,4,7);
B=double(bitget(A,7));
imshow((B));
title('Bit plane 7', 'FontSize', 20);

 
subplot(2,4,8);
B=double(bitget(A,8));
imshow((B));
title('Bit plane 8 : MSB', 'FontSize', 20);