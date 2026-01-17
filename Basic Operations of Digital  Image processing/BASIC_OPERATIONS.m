clc
close all
clear all
% Matrix Genration  %
I = uint8(rand(8,8) * 255);
disp(I) ; 
imshow(I) ;

% Image to Gray Scle %
Image  = imread('Image.jpg');
imshow(Image);
figure();
Image_Gray = rgb2gray(Image) ;
imshow(Image_Gray);

% Image to Red
Image_Red = Image ;
figure();
Image_Red(:,:,2) = 0;
Image_Red(:,:,3) = 0;
imshow(Image_Red);
% Image in Black and White % 
B_W = Image_Gray > 50 ;
uint8(B_W) ;
figure();
imshow(B_W);