clc;
clear all;
close all force;
RGB=imread('01.jpg');

% subplot(1,2,1) %stesso grafico formato da 1 riga e due colonne,posiziono grafico nel primo quadrante,va messo
% imshow(RGB);   %prima della roba che voglio plottare

I=rgb2gray(RGB);
C=imbinarize(I);
D=imcomplement(C);
imshow(C) %usare imshow invece di image--> meglio
E=regionprops(C,'area')
F=regionprops(D,'area')

CC=bwconncomp(C)

% subplot(1,2,2)

% imshow(I);
% imhist(I);


% BW=imbinarize(I); %massimizza contrasto nero-bianco
% figure
% imshowpair(I,BW,'montage') %mostra entrambe le foto

imtool(C);
k=find(C==1); %la lunghezza di questo vettore combacia anche con il numero di pixel che è dato da bwarea.
% z=k';        Non è altro il numero dei pixel=0 (white)
% % [x,y]=find(C==1)
w=C(569910);
[a,b]=ind2sub(size(C),569910); % output [riga e colonna] dell indice indicato
bwarea(C) %calcolo dell area bianca--> number of pixel belonging to white area

