%
% Laboratorio 1
%
% Sistema de la pregunta 2, inciso 1 (P2I1).
%
% Omar Trejo Navarro, 119711
% Macroeconomia Dinamica I,
% Prof. Carlos Urrutia,
% ITAM, 2015
%
function [s] = sistema_P2I1(x)
    s = [ x(1) - 4*x(1)^2 - x(1)*x(2),
          2*x(2) - x(2)^2 - 3*x(1)*x(2) ];
end