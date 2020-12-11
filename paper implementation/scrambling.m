function [scrambled_image]=scrambling(stitched_image)
%stitched_image=imread('E:\Base paper\paper implementation\plain_image.jpg');
[N,M] = size(stitched_image);
s = N*M;
I11=reshape(stitched_image,[1,s]);

x(1)=0.01234567891234;
r=3.99999;
for i=2:s
  x(i)=r*x(i-1)*(1-x(i-1));
end
g=x;
g1=g(1001:s);
 
for i=1:length(g1)
    h1(i)=mod(floor(g1(i)*10^14),s)+1;
end
h1;
list(1)=0;
temp=0;
for i=1:length(h1)
   c=checklist(h1(i),list);
   if(c==0)
    temp=I11(i);
    I11(i)=I11(h1(i));
    I11(h1(i))=temp;
    list(i)=h1(i);
   end
end
       
a=reshape(I11,N,M);

scrambled_image=a;

%end
