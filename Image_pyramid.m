img = imread('q3.png');
subplot(3,3,1), imshow(img),title('Level 0 - Original Image');
%% Level 1
[L_img, res] = pyramid(img);
subplot(3,3,2), imshow(L_img),title('Level 1');
subplot(3,3,3), imshow(res),title('Level 0 residual');

%% Level 2
[L_img, res] = pyramid(L_img);
subplot(3,3,5), imshow(L_img),title('Level 2');
subplot(3,3,6), imshow(res),title('Level 1 residual');

%% Level 3
[L_img, res] = pyramid(L_img);
subplot(3,3,8), imshow(L_img),title('Level 3');
subplot(3,3,9), imshow(res),title('Level 2 residual');

