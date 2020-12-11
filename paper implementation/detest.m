function [unscrambled_image]=detest(decoded_image)
%stitched_image=imread('E:\Base paper\paper implementation\test.jpg');
[N,M] = size(decoded_image);
s = N*M;
I11 = decoded_image;
%I11=reshape(stitched_image,[1,s]);


x(1)=0.01234567891234;
r=3.99999;
for i=1:M-1
  x(i+1)=r*x(i)*(1-x(i));
  
end
for i = 1:M
    c(i)=unique(mod(floor(x(i)*10^14),M)+1);
end
c;
for i = M:-1:1
    for j = N:-1:1
    temp=I11(j,c(i));
    I11(j,c(i))=I11(j,i);
    I11(j,i)=temp;
    end
end


x(1)=0.01234567891234;
r=3.99999;
for i=1:N-1
  x(i+1)=r*x(i)*(1-x(i));
  
end
for i = 1:N
    r(i)=unique(mod(floor(x(i)*10^14),N)+1);
end
r;
for i = N:-1:1
    for j = M:-1:1
    temp=I11(r(i),j);
    I11(r(i),j)=I11(i,j);
    I11(i,j)=temp;
    end
end
unscrambled_image=I11;
end