clc;
clear all;
fontSize = 16;
a = imread('E:\Base paper\paper implementation\scr.tif');
a(1) = 115;
key=108;
main_key=dec2bin(key,8);
[m,n] = size(a);
new_a = zeros(m,n);
final_a = zeros(m,n);
new_a = reshape(new_a,m*n,1);


for i=1:10:m*n
    if ((m*n)-i) < 10
        w = (m*n)-i;
    else
        w = 10;
    end
    for j = 0:w-1
        if j == 0
            pixel1=double(a(i+j));
            pixel2=double(a(i+j+1));
            [cipher_final1,cipher_final2] = process1(pixel1,pixel2,main_key);
            new_a(i+j) = cipher_final1;
            new_a(i+j+1) = cipher_final2;
            
        elseif mod(i+j,2)== 1
            pixel1=double(a(i+j));
            pixel2=double(a(i+j+1));
            pre_pixel1=double(a(i+j-2));
            pre_pixel2=double(a(i+j-1));
            
            [cipher_final1,cipher_final2] = process(pre_pixel1,pre_pixel2,pixel1,pixel2,main_key);
            new_a(i+j) = cipher_final1;
            new_a(i+j+1) = cipher_final2;
        end
    end
end
figure(3);
new_a = reshape(new_a,m,n);
new_a = uint8(new_a);
z = uint8(randi(200, m, n));
I5 = bitxor(new_a, z);
z = uint8(randi(200, m, n));
I5 = bitxor(I5, z);
imhist(I5)
z = uint8(randi(200, m, n));
I5 = bitxor(I5, z);

imwrite(I5,'encrypted_ibit_ch_img.tif','tif');
imshow(I5);
title('Diffused Image', 'FontSize', fontSize);