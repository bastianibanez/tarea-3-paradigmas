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

cunado(C1, C2) :-
  (esposo(Conyuge, C2) ; esposa(Conyuge, C2)),
  hermano(C1, Conyuge).

cunado(C1, C2) :-
  hermano(H, C2),
  (esposo(C1, H) ; esposa(C1, H)).


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
