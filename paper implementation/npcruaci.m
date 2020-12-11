% clc;
% clear all;
%function [npcr,uaci]=npcruaci(i,imageb)
% this function gives npcr and uaci values as output
% input variables: x=encrypted image
%                  y=encrypted image after changing the 1st pixel value in
%                  plain image
% eg:npcruaci('encryp1.png','encryp.png')
% outputs are npcr and upci values.
%  date: 13-02-13 time:08:40
i = imread('E:\Base paper\paper implementation\enc.tif');
% 
imageb = imread('E:\Base paper\paper implementation\encrypted_ibit_ch_img.tif');
        

a=i;
b=imageb;
[m,n]=size(a);
l=m*n;
x1=0;y1=0;z=0;
for i=1:m
    for j=1:n
        if a(i,j)==b(i,j)
            d(i,j)=0;
        else 
            d(i,j)=1;
        end
        x1=d(i,j)+x1;
        f=double(a(i,j))-double(b(i,j));
       
        y1=abs(f)+y1;
    end
end
n1=x1/l;
n1=n1*100;
n2=y1/(l*255);
%n2=n2/l;
n2=n2*100;
npcr=n1;


uaci=n2;