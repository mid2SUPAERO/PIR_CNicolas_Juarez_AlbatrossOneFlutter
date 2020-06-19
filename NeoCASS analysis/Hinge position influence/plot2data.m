clear all 
clc
openfig('nodo15','invisible');
 
% Acceder a los objetos hijos del los ejes actuales (current axes)
 
D = get(gca,'Children');
 
% Los datos están dentro de los ejes en XData, YData y ZData
 
XData = get(D,'XData'); 
YData = get(D,'YData');