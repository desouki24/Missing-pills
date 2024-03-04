close all;
clear all;

i= imread('im2.jpg');
imshow(i);
g=rgb2gray(i);
figure;
imshow(g);
imhist (g);
bw=g>130;
imshow(bw);

se=strel('disk',7);
afterOpening=imopen(bw,se);
imshow(afterOpening);
 




[L,num]=bwlabel(afterOpening,4);

display(15-num);

 
 
