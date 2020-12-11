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
imshow(new_a);
title('Diffused Image', 'FontSize', fontSize);
%------------------------decryption---------------------------

pixel1=double(new_a(1));
pixel2=double(new_a(2));
[cipher_final1,cipher_final2] = deprocess1(pixel1,pixel2,main_key);
final_a(1) = cipher_final1;
final_a(2) = cipher_final2;
    
    
for i=3:m*n
    if mod(i,2)== 1
    pixel1=double(new_a(i));
    pixel2=double(new_a(i+1));
    pre_pixel1=double(final_a(i-2));
    pre_pixel2=double(final_a(i-1));
    
   [cipher_final1,cipher_final2] = deprocess(pixel1,pixel2,pre_pixel1,pre_pixel2,main_key);
    
    final_a(i) = cipher_final1;
    final_a(i+1) = cipher_final2;
    end
end
figure(4);
final_a = uint8(final_a);
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
