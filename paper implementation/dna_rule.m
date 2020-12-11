function [encoded_row_pixels]=dna_rule(pixel_rule,binary_value)

encoded_row_pixels='';
%******************rule 1***************
if(pixel_rule==1)
 %1, 2
    if binary_value(1) == '0' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(1) == '0' && binary_value(2) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(1) == '1' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    end;
    %3, 4
    if binary_value(3) == '0' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(3) == '0' && binary_value(4) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(3) == '1' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    end;
    %5, 6
    if binary_value(5) == '0' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(5) == '0' && binary_value(6) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(5) == '1' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    end;
    %7, 8
    if binary_value(7) == '0' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(7) == '0' && binary_value(8) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(7) == '1' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    end;
end
    
    %*******************rule 2********************
   if(pixel_rule==2)
    %1, 2
    if binary_value(1) == '0' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(1) == '0' && binary_value(2) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(1) == '1' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    end;
    %3, 4
    if binary_value(3) == '0' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(3) == '0' && binary_value(4) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(3) == '1' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    end;
    %5, 6
    if binary_value(5) == '0' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(5) == '0' && binary_value(6) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(5) == '1' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    end;
    %7, 8
    if binary_value(7) == '0' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(7) == '0' && binary_value(8) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(7) == '1' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    end;
   end
   %***************** rule 3***********************
   if(pixel_rule==3) 
   %1, 2
    if binary_value(1) == '0' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(1) == '0' && binary_value(2) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(1) == '1' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    end;
    %3, 4
    if binary_value(3) == '0' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(3) == '0' && binary_value(4) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(3) == '1' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    end;
    %5, 6
    if binary_value(5) == '0' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(5) == '0' && binary_value(6) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(5) == '1' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    end;
    %7, 8
    if binary_value(7) == '0' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(7) == '0' && binary_value(8) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(7) == '1' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    end;
   end
    %*******************rule 4*****************
    if(pixel_rule==4)
    if binary_value(1) == '0' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(1) == '0' && binary_value(2) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(1) == '1' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    end;
    %3, 4
    if binary_value(3) == '0' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(3) == '0' && binary_value(4) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(3) == '1' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    end;
    %5, 6
    if binary_value(5) == '0' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(5) == '0' && binary_value(6) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(5) == '1' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    end;
    %7, 8
    if binary_value(7) == '0' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(7) == '0' && binary_value(8) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    elseif binary_value(7) == '1' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    end;
    end
    %*******************rule 5**************
    if(pixel_rule==5)
    %1, 2
    if binary_value(1) == '0' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(1) == '0' && binary_value(2) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(1) == '1' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    end;
    %3, 4
    if binary_value(3) == '0' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(3) == '0' && binary_value(4) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(3) == '1' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    end;
    %5, 6
    if binary_value(5) == '0' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(5) == '0' && binary_value(6) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(5) == '1' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    end;
    %7, 8
    if binary_value(7) == '0' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(7) == '0' && binary_value(8) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(7) == '1' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    end;
    end
    %****************** rule 6**********************
    if(pixel_rule==6) 
    %1, 2
    if binary_value(1) == '0' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(1) == '0' && binary_value(2) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(1) == '1' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    end;
    %3, 4
    if binary_value(3) == '0' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(3) == '0' && binary_value(4) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(3) == '1' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    end;
    %5, 6
    if binary_value(5) == '0' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(5) == '0' && binary_value(6) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(5) == '1' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    end;
    %7, 8
    if binary_value(7) == '0' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(7) == '0' && binary_value(8) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(7) == '1' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    end;
    end

%****************** rule 7 ********************
 %1, 2
 if(pixel_rule==7)
    if binary_value(1) == '0' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(1) == '0' && binary_value(2) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(1) == '1' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    end;
    %3, 4
    if binary_value(3) == '0' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(3) == '0' && binary_value(4) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(3) == '1' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    end;
    %5, 6
    if binary_value(5) == '0' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(5) == '0' && binary_value(6) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(5) == '1' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    end;
    %7, 8
    if binary_value(7) == '0' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(7) == '0' && binary_value(8) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    elseif binary_value(7) == '1' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    end;
 end
    %******************* rule 8****************
    if(pixel_rule==8)
    if binary_value(1) == '0' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(1) == '0' && binary_value(2) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(1) == '1' && binary_value(2) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    end;
    %3, 4
    if binary_value(3) == '0' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(3) == '0' && binary_value(4) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(3) == '1' && binary_value(4) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    end;
    %5, 6
    if binary_value(5) == '0' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(5) == '0' && binary_value(6) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(5) == '1' && binary_value(6) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    end;
    %7, 8
    if binary_value(7) == '0' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'T'];
    elseif binary_value(7) == '0' && binary_value(8) == '1'
        encoded_row_pixels = [encoded_row_pixels, 'C'];
    elseif binary_value(7) == '1' && binary_value(8) == '0'
        encoded_row_pixels = [encoded_row_pixels, 'G'];
    else
        encoded_row_pixels = [encoded_row_pixels, 'A'];
    end;
    end