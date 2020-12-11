clc;
clear all;
fontSize = 16;
stitched_image = stiched_Image();
%subplot(3, 2, 1);
figure(1);
imshow(stitched_image);
title('Combined Plain Image', 'FontSize', fontSize);

[N,M] = size(stitched_image);
scrambled_image = scrambling(stitched_image);
scimage = uint8(scrambled_image);
%subplot(3, 2, 2);
figure(2);
imshow(scimage);
title('Scrambled Image', 'FontSize', fontSize);

encoded_image = encode_plain_image_by_row(scrambled_image);
enimage = uint8(encoded_image);
subplot(3, 2, 3);
figure(3);
imshow(enimage);
title('Diffused Image', 'FontSize', fontSize);


decoded_image = decode_encoded_cipher_image_by_row(encoded_image,N,M);
deimage = uint8(decoded_image);
subplot(3, 2, 4);
figure(4);
imshow(deimage);
title('De-Diffused Image', 'FontSize', fontSize);

unscrambled_image = de_scramble(decoded_image);
unscimage = uint8(unscrambled_image);
%subplot(3, 2, 5);
figure(5);
imshow(unscimage);
title('De-scrambled Image', 'FontSize', fontSize);
