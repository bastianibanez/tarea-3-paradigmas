% =========================================
% Tarea 3 | Paradigmas de programación
% =========================================
% Integrantes:
% -
% -
% -
% -
% -
% =========================================
% Hechos para el árbol genealógico
persona('roberto', 95).
persona('isabel', 87).

persona('ana', 57).
persona('marcelo', 61).
persona('amalia', 48).
persona('oscar', 37).
persona('andrea', 34).

persona('martin', 37).
persona('sara', 32).
persona('esteban', 17).
persona('tiziana', 5).

persona('matias', 5).
persona('elias', 2).
% =========================================
% Reglas para edades
bebe(Persona) :-
  persona(Persona, Edad),
  Edad >= 0,
  Edad < 3.

nino(Persona) :-
  persona(Persona, Edad),
  Edad >= 3,
  Edad < 10.

adolescente(Persona) :-
  persona(Persona, Edad),
  Edad >= 10,
  Edad < 21.

adulto(Persona) :-
  persona(Persona, Edad),
  Edad >= 21,
  Edad < 70.

anciano(Persona) :-
  persona(Persona, Edad),
  Edad >= 70.

