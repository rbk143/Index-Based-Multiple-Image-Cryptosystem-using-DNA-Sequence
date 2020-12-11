tic
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

a = scrambled_image;
b=imread('C:\Program Files\MATLAB\R2017b\toolbox\images\imdata\coins.png');
key=108;
main_key=dec2bin(key,8);
[m,n] = size(a);
sa = m*n;
[k,l] = size(b);
sb = k*l;
enc_a = zeros(m,n);
dec_a = zeros(m,n);
for i = 1:sa
    c = mod(i,sb)+1;
    main_pixel = a(i);
    key_pixel = b(c);
    cipher_pixel = encode(main_pixel,key_pixel,main_key);
    enc_a(i) = cipher_pixel;
end

figure(3);
new_a = uint8(enc_a);
imshow(new_a);
title('Diffused Image', 'FontSize', fontSize);
%------------------------decryption---------------------------


for i = 1:sa
    c = mod(i,sb)+1;
    main_pixel = enc_a(i);
    key_pixel = b(c);
    cipher_pixel = decode(main_pixel,key_pixel,main_key);
    dec_a(i) = cipher_pixel;
end
figure(4);
final_a = uint8(dec_a);
decoded_image = final_a;
imshow(final_a);
title('De-Diffused Image', 'FontSize', fontSize);


unscrambled_image = de_scramble(decoded_image);
unscimage = uint8(unscrambled_image);
%subplot(3, 2, 5);
figure(5);
imshow(unscimage);
title('De-scrambled Image', 'FontSize', fontSize);

z = uint8(randi(200, N, M));
I5 = bitxor(new_a, z);
z = uint8(randi(200, N, M));
I5 = bitxor(I5, z);
figure(6);
imhist(stitched_image)
figure(7);
imhist(I5)
z = uint8(randi(200, N, M));
I5 = bitxor(I5, z);
imwrite(a,'scr.tif','tif');
imwrite(I5,'enc.tif','tif');

[ho, he, vo, ve, do, de]=corrc(stitched_image,new_a);

toc