function [stitched_image] = stiched_Image()
%f1=imread('E:\Base paper\paper implementation\non.tif');
%f2=imread('E:\Base paper\paper implementation\def.tif');
%f3=imread('E:\Base paper\paper implementation\mno.jpg');
%f4=imread('E:\Base paper\paper implementation\pro.jpg');
stitched_image = imread('E:\Base paper\128_image.jpg');
%montage(f1,f2,f3,f4, 'Size', [2,2]);
%stitched_image = [f1,f2;f3,f4];
%for taking 2D image
%stitched_image = rgb2gray(stitched_image);
imshow(stitched_image);
%imwrite(stitched_image,'256_image.jpg','jpg');