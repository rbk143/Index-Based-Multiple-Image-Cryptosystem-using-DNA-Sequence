function [string_] = cipher_binary(cipher_and_encoded_image_row,de_rule)

M = 256;
cipher_image_row = zeros(1, M);
string_ = '';
if de_rule == 1
    for i = 1:4
%rule 1
    if char(cipher_and_encoded_image_row(i)) == 'A'
        string_ = [string_, '00'];
    elseif char(cipher_and_encoded_image_row(i)) == 'T'
        string_ = [string_, '11'];
    elseif char(cipher_and_encoded_image_row(i)) == 'G'
        string_ = [string_, '01'];
    else
        string_ = [string_, '10'];
    end
    end
elseif de_rule == 2
    for i = 1:4
    %rule 2
     if char(cipher_and_encoded_image_row(i)) == 'A'
        string_ = [string_, '00'];
    elseif char(cipher_and_encoded_image_row(i)) == 'T'
        string_ = [string_, '11'];
    elseif char(cipher_and_encoded_image_row(i)) == 'G'
        string_ = [string_, '10'];
    else
        string_ = [string_, '01'];
     end
    end
elseif de_rule == 3
    for i = 1:4
     %rule 3
     if char(cipher_and_encoded_image_row(i)) == 'A'
        string_ = [string_, '01'];
    elseif char(cipher_and_encoded_image_row(i)) == 'T'
        string_ = [string_, '10'];
    elseif char(cipher_and_encoded_image_row(i)) == 'G'
        string_ = [string_, '00'];
    else
        string_ = [string_, '11'];
     end
    end
elseif de_rule == 4
    for i = 1:4
     %rule 4
     if char(cipher_and_encoded_image_row(i)) == 'A'
        string_ = [string_, '01'];
    elseif char(cipher_and_encoded_image_row(i)) == 'T'
        string_ = [string_, '10'];
    elseif char(cipher_and_encoded_image_row(i)) == 'G'
        string_ = [string_, '11'];
    else
        string_ = [string_, '00'];
     end
    end
elseif de_rule == 5
    for i = 1:4
     %rule 5
     if char(cipher_and_encoded_image_row(i)) == 'A'
        string_ = [string_, '10'];
    elseif char(cipher_and_encoded_image_row(i)) == 'T'
        string_ = [string_, '01'];
    elseif char(cipher_and_encoded_image_row(i)) == 'G'
        string_ = [string_, '00'];
    else
        string_ = [string_, '11'];
     end
    end
elseif de_rule == 6
    for i = 1:4
     %rule 6
     if char(cipher_and_encoded_image_row(i)) == 'A'
        string_ = [string_, '10'];
    elseif char(cipher_and_encoded_image_row(i)) == 'T'
        string_ = [string_, '01'];
    elseif char(cipher_and_encoded_image_row(i)) == 'G'
        string_ = [string_, '11'];
    else
        string_ = [string_, '00'];
     end
    end
elseif de_rule == 7
    for i = 1:4
     %rule 7
     if char(cipher_and_encoded_image_row(i)) == 'A'
        string_ = [string_, '11'];
    elseif char(cipher_and_encoded_image_row(i)) == 'T'
        string_ = [string_, '00'];
    elseif char(cipher_and_encoded_image_row(i)) == 'G'
        string_ = [string_, '01'];
    else
        string_ = [string_, '10'];
     end
    end
elseif de_rule == 8
    for i = 1:4
     %rule 8
     if char(cipher_and_encoded_image_row(i)) == 'A'
        string_ = [string_, '11'];
    elseif char(cipher_and_encoded_image_row(i)) == 'T'
        string_ = [string_, '00'];
    elseif char(cipher_and_encoded_image_row(i)) == 'G'
        string_ = [string_, '10'];
    else
        string_ = [string_, '01'];
     end
    end
end