function [unscrambled_image] = dechaotic_image(decoded_image,scrambleOrder);
% Recover the image, knowing the sort order
[N,M,O] = size(decoded_image);
%decoded_image = reshape(decoded_image,[N,M/3,3]);
unscrambled_image = zeros(N, M);
% Get the dimensions of the image.  numberOfColorBands should be = 3.
[rows, columns, numberOfColorBands] = size(decoded_image);

% Extract the individual red, green, and blue color channels.

redChannel = decoded_image(:, :, 1);
greenChannel = decoded_image(:, :, 2);
blueChannel = decoded_image(:, :, 3);
% Recover the image, knowing the sort order
recoverOrder = zeros([rows*columns], 2);
recoverOrder(:, 1) = 1 : (rows*columns);
recoverOrder(:, 2) = scrambleOrder;
% Sort this to find out where each scrambled location needs to be sent to.
newOrder = sortrows(recoverOrder, 2);
% Extract just column 1, which is the order we need.
newOrder = newOrder(:,1);
% Unscramble according to the recoverOrder order.
redChannel = redChannel(newOrder);
greenChannel = greenChannel(newOrder);
blueChannel = blueChannel(newOrder);
% Reshape into a 2D image
redChannel = reshape(redChannel, [rows, columns]);
greenChannel = reshape(greenChannel, [rows, columns]);
blueChannel = reshape(blueChannel, [rows, columns]);
% Recombine separate color channels into a single, true color RGB image.
unscrambled_image = cat(3, redChannel, greenChannel, blueChannel);

