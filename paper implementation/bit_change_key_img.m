clc;
clear all;
fontSize = 16;
a = imread('E:\Base paper\paper implementation\scr.tif');
b=imread('E:\Base paper\Waterloo\peppers2.tif');
a(1) = 67;
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
z = uint8(randi(200, n, m));
I5 = bitxor(new_a, z);
z = uint8(randi(200, n, m));
I5 = bitxor(I5, z);
imhist(I5)
z = uint8(randi(200, n, m));
I5 = bitxor(I5, z);
imwrite(I5,'encrypted_ibit_ch_img.tif','tif');
imshow(new_a);
title('Diffused Image', 'FontSize', fontSize);

[ho, he, vo, ve, do, de]=corrc(stiched_Image,new_a);
%[ho, he, vo, ve, do, de]=corrc(a,new_a);