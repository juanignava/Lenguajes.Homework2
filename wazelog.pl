% Definimos las ciudades del grafo
ciudad(cartago).
ciudad(san_jose).
ciudad(heredia).
ciudad(alajuela).
afirmativo(si).
afirmativo(sí).
afirmativo(yes).

negativo(no).
negativo(none).

waze:-
    write("Por favor indique el lugar al que se dirige: "),
    b_setval(lista_intermedios, []),
    b_setval(lista_recorridos, []),
    nl,
    read(X),
    confirmar_destino(X).

confirmar_destino(Destiny):- 
    ciudad(Destiny),
    b_setval(destiny, Destiny),
    waze_from, 
    !.
confirmar_destino(Destiny):- 
    write("Lo sentimos, el destino no existe"),
    nl,
    waze.

waze_from:-
    %b_getval(destiny, V),
    write("Por favor indique el lugar donde empieza el viaje: "),
    nl,
    read(X),
    confirmar_partida(X).

confirmar_partida(Partida):-
    ciudad(Partida),
    b_setval(partida, Partida),
    waze_intermediate,
    !.

confirmar_partida(Partida):-
    write("Lo sentimos su lugar de partida no existe: "),
    nl,
    waze_from.

waze_intermediate:-
    write("Algun (otro) destino intermedio?"),
    nl,
    read(X),
    confirmar_respuesta(X).

confirmar_respuesta(Respuesta):-
    afirmativo(Respuesta),
    write("Cual es el detino intermedio?"),
    nl,
    read(X),
    confirmar_intermedio(X),
    !.

confirmar_respuesta(Respuesta):-
    negativo(Respuesta),
    waze_final,
    !.

confirmar_respuesta(Respuesta):- waze_intermediate.

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
    
waze_final:-
    b_getval(destiny, Destiny),
    b_getval(partida, Partida),
    b_getval(lista_intermedios, L),
    append([Partida], L, X),
    append(X, [Destiny], Result),
    write("La ruta indicada es: "),
    write(Result).


