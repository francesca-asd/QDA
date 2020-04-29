clc;
clear all;
close all force;
%pensare a come trattare la parte nera in più che è fuori dal diametro (è
%in ogni foto quindi se standardizzo con la percentuale,non è una
%differenza-->è presente ovunque,è nera e no bianca-->io calcolo il bianco.
%La proporzione del bianco rimane la stessa!
files=dir('C:\Users\Giacomo\Desktop\QDAPROJ\*.jpg')
N=57;
j=1;
for ii=1:N
    sample(ii).I=imread([files(ii).folder,'\',files(ii).name]);
    gray(j).L=rgb2gray(sample(ii).I);
    binar(j).T=imbinarize(gray(j).L);
    whitearea(j).U=(bwarea(binar(j).T))
    D=size(binar(j).T)
    E(j).F=(D(1)*D(2))
    Z(j).O=ceil(((whitearea(j).U)./(E(j).F)).*100) %percentuale di area bianca che ho
    j=j+1;    
end