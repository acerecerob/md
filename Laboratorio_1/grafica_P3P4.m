%
% Laboratorio 1
%
% Funcion para las graficas de las preguntas 3 y 4.
%
% Omar Trejo Navarro, 119711
% Macroeconomia Dinamica I,
% Prof. Carlos Urrutia,
% ITAM, 2015
%
function [] = grafica_P3P4(kt_vf, yt_vf, it_vf, ct_vf, rt_vf, wt_vf, T)
    figure(3)

    subplot(3, 2, 1)
    plot(1:T + 1, kt_vf, 'r')
    title('Trayectoria optima del capital')
    axis([0 100 0 max(kt_vf)*1.1])

    subplot(3, 2, 2)
    plot(1:T, yt_vf, 'r')
    title('Trayectoria optima del producto')
    axis([0 100 0 max(yt_vf)*1.1])

    subplot(3,2,3)
    plot(1:T, it_vf, 'r')
    title('Trayectoria optima de la inversion')
    axis([0 100 0 max(it_vf)*1.1])

    subplot(3, 2, 4)
    plot(1:T, ct_vf, 'r')
    title('Trayectoria optima del consumo')
    axis([0 100 0 max(ct_vf)*1.1])

    subplot(3, 2, 5)
    plot(1:T + 1, rt_vf, 'r')
    title('Trayectoria optima de la tasa de interes')
    axis([0 100 0 max(rt_vf)*1.1])

    subplot(3,2,6)
    plot(1:T+1, wt_vf, 'r')
    title('Trayectoria optima del salario')
    axis([0 100 0 max(wt_vf)*1.1])
end
