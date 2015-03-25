%==========================================================
%======= Macro Din�mica I- Laboratorio N�1========
%=========================ITAM=============================
%Laboratorista: Cristi�n Aguilera
%=====================2015=================================
%Pregunta N�4
%Obs: Este script usa las funci�n v.m
%==========================================================
clear all
close all
clc
tic
% Par�metros del modelo
alpha   = 0.35;
beta    = 0.99;
delta   = 0.06;
A       = 10;
tau     = 0;

% Otros par�metros requeridos (n�mero m�ximo de iteraciones, criterio
% de tolerancia, n�mero de periodos antes de llegar a estado estacionario)
maxit   = 1000;
T       = 100;

kss     = ((A*beta*alpha)/(1-(1-delta)*beta))^(1/(1-alpha));
k0	= (2/3)*kss;
malla = 500;
crit   = 1e-3;

% Iteraci�n de la funci�n de valor
[kt_vf,yt_vf,it_vf,ct_vf] = v(alpha,beta,delta,A,maxit,crit,T,kss,k0,malla);

rt_vf = alpha.*A*kt_vf.^(alpha-1); % construcci�n tasa de inter�s
wt_vf = (1-alpha).*A*kt_vf.^alpha; % construcci�n de salarios

toc



%% Gr�ficas 
figure(3)
subplot(3,2,1)
plot(1:T+1,kt_vf,'r')
title('Trayectoria �ptima del Capital')
axis([0 100 0 max(kt_vf)*1.1])

subplot(3,2,2)
plot(1:T,yt_vf,'r')
title('Trayectoria �ptima del Producto')
axis([0 100 0 max(yt_vf)*1.1])

subplot(3,2,3)
plot(1:T,it_vf,'r')
title('Trayectoria �ptima de la Inversi�n')
axis([0 100 0 max(it_vf)*1.1])

subplot(3,2,4)
plot(1:T,ct_vf,'r')
title('Trayectoria �ptima del Consumo')
axis([0 100 0 max(ct_vf)*1.1])

subplot(3,2,5)
plot(1:T+1,rt_vf,'r')
title('Trayectoria �ptima de la Tasa de Inter�s')
axis([0 100 0 max(rt_vf)*1.1])

subplot(3,2,6)
plot(1:T+1,wt_vf,'r')
title('Trayectoria �ptima del Salario')
axis([0 100 0 max(wt_vf)*1.1])







