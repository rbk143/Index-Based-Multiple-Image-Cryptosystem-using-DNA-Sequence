clc;
clear all;
fontSize = 16;
a = imread('E:\Base paper\paper implementation\scr.tif');
a(1) = 67;
key=108;
main_key=dec2bin(key,8);
[m,n] = size(a);
new_a = zeros(m,n);
final_a = zeros(m,n);
s = (m*n)/2 ;
new_a = reshape(new_a,m*n,1);


pixel1=double(a(1));
pixel2=double(a(2));
[cipher_final1,cipher_final2] = process1(pixel1,pixel2,main_key);
new_a(1) = cipher_final1;
new_a(2) = cipher_final2;

for i=3:m*n
    
    if mod(i,2)== 1
        pixel1=double(a(i));
        pixel2=double(a(i+1));
        pre_pixel1=double(a(i-2));
        pre_pixel2=double(a(i-1));
        [cipher_final1,cipher_final2] = process(pre_pixel1,pre_pixel2,pixel1,pixel2,main_key);
        new_a(i) = cipher_final1;
        new_a(i+1) = cipher_final2;
    end
end
figure(3);
new_a = reshape(new_a,m,n);
new_a = uint8(new_a);
z = uint8(randi(200, n, m));
I5 = bitxor(new_a, z);
z = uint8(randi(200, n, m));
I5 = bitxor(I5, z);
imhist(I5)
z = uint8(randi(200, n, m));
I5 = bitxor(I5, z);
imwrite(I5,'encrypted_ibit_ch_img.tif','tif');
imshow(I5);
title('Diffused Image', 'FontSize', fontSize);

[ho, he, vo, ve, do, de]=corrc(stiched_Image,new_a);
%[ho, he, vo, ve, do, de]=corrc(a,new_a);