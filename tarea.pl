% =========================================
% Tarea 3 | Paradigmas de programación
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
% Hechos parentescos

% --- Parejas ---

% -- Esposos --
esposo(roberto, isabel).
esposo(marcelo, ana).
esposo(oscar, andrea).
esposo(martin, sara).

% -- Esposas --
esposa(isabel, roberto).
esposa(ana, marcelo).
esposa(andrea, oscar).
esposa(sara, martin).

% --- Progenitores ---

% -- Padres --
padre(roberto, ana).
padre(roberto, amalia).
padre(roberto, oscar).
padre(marcelo, martin).
padre(oscar, esteban).
padre(oscar, tiziana).
padre(martin, matias).
padre(martin, elias).

% -- Madres --
madre(isabel, ana).
madre(isabel, amalia).
madre(isabel, oscar).
madre(ana, martin).
madre(andrea, esteban).
madre(andrea, tiziana).
madre(sara, matias).
madre(sara, elias).

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

% =========================================
% Reglas para comparar edades

mayor_que(P1, P2) :-
  persona(P1, E1),
  persona(P2, E2),
  E1 > E2.

menor_que(P1, P2) :-
  persona(P1, E1),
  persona(P2, E2),
  E1 < E2.

misma_edad(P1, P2) :-
  persona(P1, E1),
  persona(P2, E2),
  E1 =:= E2,
  P1 \= P2.

% =========================================
% Reglas para parentescos

progenitor(P, H) :-
  padre(P, H);
  madre(P, H).

hijo(X, Y) :-
  progenitor(Y, X).

hermano(P1, P2) :-
  progenitor(P, P1),
  progenitor(P, P2),
  P1 \= P2.

tio(T, S) :-
  progenitor(P, S),
  hermano(T, P).

sobrino(S, T) :-
  tio(T, S).

primo(P1, P2) :-
  progenitor(Padre1, P1),
  progenitor(Padre2, P2),
  hermano(Padre1, Padre2),
  P1 \= P2.

abuelo(A, N) :-
  progenitor(P, N),
  progenitor(A, P).

nieto(N, A) :-
  abuelo(A, N).

bisabuelo(BA, BN) :-
  progenitor(P, BN),
  abuelo(BA, P).

bisnieto(BN, BA) :-
  bisabuelo(BA, BN).
