function [cipher_pixel] = decode(main_pixel,key_pixel,main_key)


key_rule=mod(key_pixel,8)+1;
b1=dec2bin(main_pixel,8);
 e1=dna_rule(key_rule,b1);
e2=dna_rule(key_rule,main_key);
 xors_value1=xor_keyrule(key_rule,e1,e2);
        
        derule_no1 = key_rule;
        cipher1=cipher_binary(xors_value1,derule_no1);
        cipher_pixel=bin2dec(cipher1);
