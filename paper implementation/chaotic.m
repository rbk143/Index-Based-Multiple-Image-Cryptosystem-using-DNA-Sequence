function [scrambled_image,scrambleOrder] = chaotic(stitched_image)
[N,M] = size(stitched_image);
scrambled_image = zeros(N, M);
rgbImage = stitched_image;
% Get the dimensions of the image.  numberOfColorBands should be = 3.
[rows, columns, numberOfColorBands] = size(rgbImage);
% Get the order to scramble them in 
scrambleOrder = randperm(rows*columns);
% Extract the individual red, green, and blue color channels.
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);
% Scramble according to the scrambling order.
redChannel = redChannel(scrambleOrder);
greenChannel = greenChannel(scrambleOrder);
blueChannel = blueChannel(scrambleOrder);
% Reshape into a 2D image
redChannel = reshape(redChannel, [rows, columns]);
greenChannel = reshape(greenChannel, [rows, columns]);
blueChannel = reshape(blueChannel, [rows, columns]);
% Recombine separate color channels into a single, true color RGB image.
scrambled_image = cat(3, redChannel, greenChannel, blueChannel);
%imwrite(scrambled_image,'scrambledImage.jpg','jpg');