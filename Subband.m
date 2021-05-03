clear all;
clc;
close all;

 I = imread('q3.png');
 D0 = 100;
 % 1st Stage
 
 [tempL, tempH] = subHL(I,D0);
 
 % 2nd Stage
 
 [approx,vertical] = subHL(tempL,D0);
 [hori,diag] = subHL(tempH,D0);
  
 % vizualization
 
 subplot(4,3,4);imshow(I);title('Original image');
 subplot(4,3,5);imshow(tempL);title('1st stage low-pass filter d=100');
 subplot(4,3,8);imshow(tempH);title('1st stage high-pass filter d=100');
 subplot(4,3,3);imshow(approx);title('Approximation');
 subplot(4,3,6);imshow(vertical);title('Vertical');
 subplot(4,3,9);imshow(hori);title('Horizontal');
 subplot(4,3,12);imshow(diag);title('Diagonal');


