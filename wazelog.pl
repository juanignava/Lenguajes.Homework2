% Definimos las ciudades del grafo (estos valores se cambiarán luego).
ciudad("cartago").
ciudad("cartago.").
ciudad("cartago,").

ciudad("sanjose").
ciudad("sanjose.").
ciudad("sanjose,").

ciudad("heredia").
ciudad("heredia.").
ciudad("heredia,").

ciudad("alajuela").
ciudad("alajuela.").
ciudad("alajuela,").

% definimos las posibles respuestas afirmativas.
afirmativo("si.").
afirmativo("si,").
afirmativo("si").
afirmativo("sí").

% posibles respuestas negativas.
negativo("no").
negativo("no.").
negativo("no,").
negativo("ninguno").

% inicio de la aplicación, da la bienvenida al jugador y le pregunta por su destino.
waze:-
    write("Bienvenido a wazelog, por favor indique el lugar al que se dirige: "),
    b_setval(lista_intermedios, []),
    b_setval(lista_recorridos, []),
    nl,
    read(X),
    string_lower(X, S),
    split_string(S, " ", "", L),
    obtener_ciudad(L, C),
    confirmar_destino(C).

% Confimación del destino, is no se reconoce la ciudad entonces se devuelve a la regla waze.
confirmar_destino(Destiny):-
    ciudad(Destiny),
    b_setval(destiny, Destiny),
    waze_from, 
    !.
confirmar_destino(Destiny):- 
    string_concat("Lo sentimos, el destino ", Destiny, Alert),
    write(Alert),
    nl,
    waze.

% Regla que pregunta el lugar donde inicia el viaje.
waze_from:-
    nl,
    write("Por favor indique el lugar donde empieza el viaje: "),
    nl,
    read(X),
    string_lower(X, S),
    split_string(S, " ", "", L),
    obtener_ciudad(L, C),
    confirmar_partida(C).

% Reglas de confirmación de partida.
% Determinan si el lugar de partida es válido, si no entonces 
% vuelve a preguntar desde la regla waze_from.
confirmar_partida(Partida):-
    b_getval(destiny, Destiny),
    Partida == Destiny,
    write("Error, el lugar de partida no puede ser igual a su destino"),
    nl,
    waze_from,
    !.

confirmar_partida(Partida):-
    ciudad(Partida),
    b_setval(partida, Partida),
    waze_intermediate,
    !.

confirmar_partida(Partida):-
    string_concat("Lo sentimos, el lugar de partida ", Partida, Alert),
    write(Alert),
    nl,
    waze_from.

% Regla de los lugares intermedios
% Le pregunta al usuario si tiene algún destino intermedio.
waze_intermediate:-
    nl,
    write("Algun (otro) destino intermedio?"),
    nl,
    read(X),
    string_lower(X, S),
    split_string(S, " ", "", L),
    obtener_respuesta(L, C),
    confirmar_respuesta(C).

% Reglas de confirmación de respuesta
% Determinan si el usuario tiene destinos intermedios.
confirmar_respuesta(Respuesta):-
    afirmativo(Respuesta),
    nl,
    write("Cual es el detino intermedio?"),
    nl,
    read(X),
    string_lower(X, S),
    split_string(S, " ", "", L),
    obtener_ciudad(L, C),
    nl,
    confirmar_intermedio(C),
    !.

confirmar_respuesta(Respuesta):-
    negativo(Respuesta),
    waze_final,
    !.

confirmar_respuesta(Respuesta):-
    string_concat(Respuesta, ", por favor responda si o no", Alert),
    write(Alert),
    nl,
    waze_intermediate.

% Reglas de confirmación del destino intermedio.
% Definen si el detino ingresado existe o no.
confirmar_intermedio(Inter):-
    b_getval(destiny, Destiny),
    Inter == Destiny,
    write("Error: el lugar intermedio no puede ser igual a su destino."),
    nl,
    waze_intermediate,
    !.

confirmar_intermedio(Inter):-
    b_getval(partida, Partida),
    Inter == Partida,
    write("Error: el lugar intermedio no puede ser igual a su lugar de partida."),
    nl,
    waze_intermediate,
    !.

confirmar_intermedio(Inter):-
    b_getval(lista_intermedios, L),
    member(Inter, L),
    write("Error: el lugar intermedio ya fue tomado en cuenta"),
    nl,
    waze_intermediate,
    !.

confirmar_intermedio(Inter):-
    ciudad(Inter),
    b_getval(lista_intermedios, L),
    append(L, [Inter], X),
    b_setval(lista_intermedios, X),
    waze_intermediate,
    !.

confirmar_intermedio(Inter):-
    string_concat("Lo sentimos su lugar intermedio ", Inter, Alert),
    write(Alert),
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

% Regla de obtener ciudad.
% Reconoce el nombre de una ciudad en las oraciones que el usuario
% ingresa en las preguntas.
obtener_ciudad([X|_], C):- ciudad(C), C==X, !.
obtener_ciudad([], "no existe").
obtener_ciudad([_|List], C):- 
    obtener_ciudad(List, C).

% Regla de obtener respuesta, reconoce las posible respuestas afirmativas o negativas del
% usuario en las preguntas.
obtener_respuesta([X|_], R):- afirmativo(R), R==X, !.
obtener_respuesta([X|_], R):- negativo(R), R==X, !.
obtener_respuesta([], "Respuesta no valida").
obtener_respuesta([_|List], R):-
    obtener_respuesta(List, R).