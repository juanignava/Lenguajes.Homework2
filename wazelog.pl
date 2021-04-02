% Definimos las ciudades del grafo (estos valores se cambiarán luego).
ciudad(cartago).
ciudad(san_jose).
ciudad(heredia).
ciudad(alajuela).

% definimos las posibles respuestas afirmativas.
afirmativo(si).
afirmativo(sí).
afirmativo(yes).

% posibles respuestas negativas.
negativo(no).
negativo(none).

% inicio de la aplicación, da la bienvenida al jugador y le pregunta por su destino.
waze:-
    write("Por favor indique el lugar al que se dirige: "),
    b_setval(lista_intermedios, []),
    b_setval(lista_recorridos, []),
    nl,
    read(X),
    split_string(X, " ", "", L),
    write(L),
    nl,
    obtener_ciudad(L, C),
    write(C),
    nl,
    confirmar_destino(C).

% Confimación del destino, is no se reconoce la ciudad entonces se devuelve a la regla waze.
confirmar_destino(Destiny):-
    ciudad(Destiny),
    b_setval(destiny, Destiny),
    waze_from, 
    !.
confirmar_destino(Destiny):- 
    write("Lo sentimos, el destino no existe"),
    nl,
    waze.

% Regla que pregunta el lugar donde inicia el viaje.
waze_from:-
    write("Por favor indique el lugar donde empieza el viaje: "),
    nl,
    read(X),
    split_string(X, " ", "", L),
    write(L),
    nl,
    obtener_ciudad(L, C),
    write(C),
    nl,
    confirmar_partida(C).

% Reglas de confirmación de partida.
% Determinan si el lugar de partida es válido, si no entonces 
% vuelve a preguntar desde la regla waze_from.
confirmar_partida(Partida):-
    ciudad(Partida),
    b_setval(partida, Partida),
    waze_intermediate,
    !.

confirmar_partida(Partida):-
    write("Lo sentimos su lugar de partida no existe: "),
    nl,
    waze_from.

% Regla de los lugares intermedios
% Le pregunta al usuario si tiene algún destino intermedio.
waze_intermediate:-
    write("Algun (otro) destino intermedio?"),
    nl,
    read(X),
    split_string(X, " ", "", L),
    obtener_respuesta(L, C),
    confirmar_respuesta(C).

% Reglas de confirmación de respuesta
% Determinan si el usuario tiene destinos intermedios.
confirmar_respuesta(Respuesta):-
    afirmativo(Respuesta),
    write("Cual es el detino intermedio?"),
    nl,
    read(X),
    split_string(X, " ", "", L),
    write(L),
    obtener_ciudad(L, C),
    write(C),
    nl,
    confirmar_intermedio(C),
    !.

confirmar_respuesta(Respuesta):-
    negativo(Respuesta),
    waze_final,
    !.

confirmar_respuesta(Respuesta):-
    write("Por favor responda si o no."),
    nl,
    waze_intermediate.

% Reglas de confirmación del destino intermedio.
% Definen si el detino ingresado existe o no.
confirmar_intermedio(Inter):-
    ciudad(Inter),
    b_getval(lista_intermedios, L),
    append(L, [Inter], X),
    b_setval(lista_intermedios, X),
    waze_intermediate,
    !.

confirmar_intermedio(Inter):-
    write("Lo sentimos su lugar intermedio no existe: "),
    nl,
    waze_intermediate.

% Regla final del programa.
% Se crea la lista ruta que el usuario determinó.
waze_final:-
    b_getval(destiny, Destiny),
    b_getval(partida, Partida),
    b_getval(lista_intermedios, L),
    append([Partida], L, X),
    append(X, [Destiny], Result),
    write("La ruta indicada es: "),
    write(Result).


obtener_ciudad([X|List], C):- ciudad(C), C==X, !.
obtener_ciudad([], "null").
obtener_ciudad([X|List], C):- 
    obtener_ciudad(List, C).

obtener_respuesta(List, Respuesta):- afirmativo(Respuesta).
obtener_respuesta(List, Respuesta):- negativo(Respuesta).
obtener_respuesta([], "").
obtener_respuesta([_|List], Respuesta):- obtener_respuesta(List, _).