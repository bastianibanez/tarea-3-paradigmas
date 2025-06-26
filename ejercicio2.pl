% =========================================
% Tarea 3 - Ejercicio 2 | Paradigmas de programación
%
% =========================================
% Integrantes:
% -
% -
% -
% -
% -

% =========================================
% Hechos personas

edad('roberto', 95).
edad('isabel', 87).
edad('marcelo', 61).
edad('amalia', 48).
edad('oscar', 37).
edad('andrea', 34).

edad('martin', 37).
edad('sara', 32).
edad('esteban', 17).
edad('tiziana', 5).

edad('matias', 5).
edad('elias', 2).

% =========================================
% Reglas para comparar edades

mayor_que(P1, P2) :-
  edad(P1, E1),
  edad(P2, E2),
  E1 > E2.

menor_que(P1, P2) :-
  edad(P1, E1),
  edad(P2, E2),
  E1 < E2.

misma_edad(P1, P2) :-
  edad(P1, E1),
  edad(P2, E2),
  E1 =:= E2,
  P1 \= P2.
