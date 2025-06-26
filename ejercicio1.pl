% =========================================
% Tarea 3 - Ejercicio 1 | Paradigmas de programación
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
% Reglas para edades

bebe(Persona) :-
  edad(Persona, Edad),
  Edad >= 0,
  Edad < 3.

nino(Persona) :-
  edad(Persona, Edad),
  Edad >= 3,
  Edad < 10.

adolescente(Persona) :-
  edad(Persona, Edad),
  Edad >= 10,
  Edad < 21.

adulto(Persona) :-
  edad(Persona, Edad),
  Edad >= 21,
  Edad < 70.

anciano(Persona) :-
  edad(Persona, Edad),
  Edad >= 70.
