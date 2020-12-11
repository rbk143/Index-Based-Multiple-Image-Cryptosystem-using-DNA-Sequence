function [encoded_row_pixels] = xor_rule(dna_value1,dna_value2)
encoded_row_pixels='';
for i=1:length(dna_value1)
    
if dna_value1(i) == 'A' && dna_value2(i) == 'A'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif  dna_value1(i) == 'A' && dna_value2(i) == 'G'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif  dna_value1(i) == 'A' && dna_value2(i) == 'C'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
       elseif  dna_value1(i) == 'A' && dna_value2(i) == 'T'
        encoded_row_pixels = [encoded_row_pixels, 'T'];  
         elseif  dna_value1(i) == 'G' && dna_value2(i) == 'A'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
        elseif  dna_value1(i) == 'G' && dna_value2(i) == 'G'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
        elseif  dna_value1(i) == 'G' && dna_value2(i) == 'C'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
        elseif  dna_value1(i) == 'G' && dna_value2(i) == 'T'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
        elseif  dna_value1(i) == 'C' && dna_value2(i) == 'A'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
        elseif  dna_value1(i) == 'C' && dna_value2(i) == 'G'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
        elseif  dna_value1(i) == 'C' && dna_value2(i) == 'C'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
        elseif  dna_value1(i) == 'C' && dna_value2(i) == 'T'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
        elseif  dna_value1(i) == 'T' && dna_value2(i) == 'A'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
        elseif  dna_value1(i) == 'T' && dna_value2(i) == 'G'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
        elseif  dna_value1(i) == 'T' && dna_value2(i) == 'C'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
else  dna_value1(i) == 'T' && dna_value2(i) == 'T'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
end
end


