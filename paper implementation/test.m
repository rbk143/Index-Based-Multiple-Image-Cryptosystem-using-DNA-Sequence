function [scrambled_image]=test(stitched_image)
%stitched_image=imread('E:\Base paper\paper implementation\plain_image.jpg');
[N,M] = size(stitched_image);
s = N*M;
I11 = stitched_image;
%I11=reshape(stitched_image,[1,s]);

x(1)=0.01234567891234;
r=3.99999;
for i=1:N-1
  x(i+1)=r*x(i)*(1-x(i));
  
end
for i = 1:N
    r(i)=unique(mod(floor(x(i)*10^14),N)+1);
end
r;
for i = 1:N
    for j = 1:M
    temp=I11(i,j);
    I11(i,j)=I11(r(i),j);
    I11(r(i),j)=temp;
    end
end


x(1)=0.01234567891234;
r=3.99999;
for i=1:M-1
  x(i+1)=r*x(i)*(1-x(i));
  
end
for i = 1:M
    c(i)=unique(mod(floor(x(i)*10^14),M)+1);
end
c;
for i = 1:M
    for j = 1:N
    temp=I11(j,i);
    I11(j,i)=I11(j,c(i));
    I11(j,c(i))=temp;
    end
end

scrambled_image=I11;
end