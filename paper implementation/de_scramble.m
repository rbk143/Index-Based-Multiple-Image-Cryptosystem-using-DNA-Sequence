function [unscrambled_image]=de_scramble(decoded_image)
[N,M] = size(decoded_image);
s = N*M;
a11=reshape(decoded_image,1,s);

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
temp=0;
list(1)=0;
for i=length(h1):-1:1
    t=checklist(h1(i),list);
    if(t==0)
      temp=a11(h1(i));
      a11(h1(i))=a11(i);
      a11(i)=temp;
      list(i)=h1(i);
    end
end  
a=reshape(a11,N,M);
unscrambled_image=a;

end