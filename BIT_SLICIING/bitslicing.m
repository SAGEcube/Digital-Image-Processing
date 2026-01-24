% ----------------------------
% Bit Plane Slicing in MATLAB
% ----------------------------
% Author: BT23ECE100
% Description:
% This script reads a grayscale image, extracts its 8 bit planes (LSB to MSB),
% and displays them using MATLAB figures.

clc;
clear;
close all;

% Step 1: Read the image in grayscale
img = imread('./img.jpg');

% If image is RGB, convert to grayscale
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Step 2: Convert image to uint8 (0–255)
img = uint8(img);

% Step 3: Create a figure
figure;
set(gcf, 'Position', [100 100 900 600]);

% Step 4: Display original image
subplot(3, 3, 1);
imshow(img);
title('Original Image');
axis off;

% Step 5: Extract and display bit planes
% Bit order: b0 (LSB) to b7 (MSB)
for i = 0:7
    % Extract ith bit plane using bitget
    bit_plane = bitget(img, i+1);  
    % MATLAB uses 1-based indexing for bits
    
    % Convert logical values to 0–255 for visibility
    bit_plane = uint8(bit_plane * 255);
    
    % Display bit plane
    subplot(3, 3, i + 2);
    imshow(bit_plane);
    title(['Bit Plane ', num2str(i)]);
    axis off;
end

