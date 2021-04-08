% Definicion de los arcos, tiempos y tiempos en presa que representan el
% grafo.

% arco(lugar1, lugar2, distancia en Km).
arco("sanjose", "cartago", 20).
arco("sanjose", "corralillo", 22).

arco("tresrios", "sanjose", 8).
arco("tresrios", "pacayas", 15).

arco("cartago", "sanjose", 20).
arco("cartago", "tresrios", 8).
arco("cartago", "musgoverde", 10).
arco("cartago", "pacayas", 13).
arco("cartago", "paraiso", 10).

arco("pacayas", "tresrios", 15).
arco("pacayas", "cartago", 13).
arco("pacayas", "cervantes", 8).

arco("corralillo", "sanjose", 22).
arco("corralillo", "musgoverde", 6).

arco("musgoverde", "corralillo", 6).
arco("musgoverde", "cartago", 10).

arco("cervantes", "pacayas", 8).
arco("cervantes", "cachi", 7).
arco("cervantes", "juanvinas", 5).

arco("paraiso", "cervantes", 4).
arco("paraiso", "cachi", 10).
arco("paraiso", "orosi", 8).

arco("cachi", "paraiso", 10).
arco("cachi", "orosi", 12).
arco("cachi", "cervantes", 7).
arco("cachi", "turrialba", 40).

arco("orosi", "paraiso", 8).
arco("orosi", "cachi", 12).

arco("juanvinas", "turrialba", 4).

arco("turrialba", "cachi", 40).
arco("turrialba", "pacayas", 18).


% Definicion de los tiempos estimados.
% tiempo(lugar1, lugar2, tiempo en minutos).
tiempo("sanjose", "cartago", 20).
tiempo("sanjose", "corralillo", 22).

tiempo("tresrios", "sanjose", 8).
tiempo("tresrios", "pacayas", 15).

tiempo("cartago", "sanjose", 20).
tiempo("cartago", "tresrios", 8).
tiempo("cartago", "musgoverde", 10).
tiempo("cartago", "pacayas", 13).
tiempo("cartago", "paraiso", 10).

tiempo("pacayas", "tresrios", 15).
tiempo("pacayas", "cartago", 13).
tiempo("pacayas", "cervantes", 8).

tiempo("corralillo", "sanjose", 22).
tiempo("corralillo", "musgoverde", 6).

tiempo("musgoverde", "corralillo", 6).
tiempo("musgoverde", "cartago", 10).

tiempo("cervantes", "pacayas", 8).
tiempo("cervantes", "cachi", 7).
tiempo("cervantes", "juanvinas", 5).

tiempo("paraiso", "cervantes", 4).
tiempo("paraiso", "cachi", 10).
tiempo("paraiso", "orosi", 8).

tiempo("cachi", "paraiso", 10).
tiempo("cachi", "orosi", 12).
tiempo("cachi", "cervantes", 7).
tiempo("cachi", "turrialba", 40).

tiempo("orosi", "paraiso", 8).
tiempo("orosi", "cachi", 12).

tiempo("juanvinas", "turrialba", 4).

tiempo("turrialba", "cachi", 40).
tiempo("turrialba", "pacayas", 18).


% Definicion de los tiempos estimados en presas.
% tiempoPresa(lugar1, lugar2, tiempo en minutos).
tiempoPresa("sanjose", "cartago", 40).
tiempoPresa("sanjose", "corralillo", 44).

tiempoPresa("tresrios", "sanjose", 16).
tiempoPresa("tresrios", "pacayas", 30).

tiempoPresa("cartago", "sanjose", 40).
tiempoPresa("cartago", "tresrios", 16).
tiempoPresa("cartago", "musgoverde", 20).
tiempoPresa("cartago", "pacayas", 26).
tiempoPresa("cartago", "paraiso", 20).

tiempoPresa("pacayas", "tresrios", 30).
tiempoPresa("pacayas", "cartago", 26).
tiempoPresa("pacayas", "cervantes", 16).

tiempoPresa("corralillo", "sanjose", 44).
tiempoPresa("corralillo", "musgoverde", 12).

tiempoPresa("musgoverde", "corralillo", 12).
tiempoPresa("musgoverde", "cartago", 20).

tiempoPresa("cervantes", "pacayas", 16).
tiempoPresa("cervantes", "cachi", 14).
tiempoPresa("cervantes", "juanvinas", 10).

tiempoPresa("paraiso", "cervantes", 8).
tiempoPresa("paraiso", "cachi", 20).
tiempoPresa("paraiso", "orosi", 16).

tiempoPresa("cachi", "paraiso", 20).
tiempoPresa("cachi", "orosi", 24).
tiempoPresa("cachi", "cervantes", 14).
tiempoPresa("cachi", "turrialba", 80).

tiempoPresa("orosi", "paraiso", 16).
tiempoPresa("orosi", "cachi", 24).

tiempoPresa("juanvinas", "turrialba", 8).

tiempoPresa("turrialba", "cachi", 80).
tiempoPresa("turrialba", "pacayas", 36).



% Definimos las ciudades del grafo (estos valores se cambiarán luego).
ciudad("cartago.", "cartago").
ciudad("cartago,", "cartago").
ciudad("cartago", "cartago").

ciudad("sanjose.", "sanjose").
ciudad("sanjose,", "sanjose").
ciudad("sanjose", "sanjose").

ciudad("tresrios.", "tresrios").
ciudad("tresrios,", "tresrios").
ciudad("tresrios", "tresrios").

ciudad("corralillo.", "corralillo").
ciudad("corralillo,", "corralillo").
ciudad("corralillo", "corralillo").

ciudad("musgoverde.", "musgoverde").
ciudad("musgoverde,", "musgoverde").
ciudad("musgoverde", "musgoverde").

ciudad("pacayas.", "pacayas").
ciudad("pacayas,", "pacayas").
ciudad("pacayas", "pacayas").

ciudad("paraiso.", "paraiso").
ciudad("paraiso,", "paraiso").
ciudad("paraiso", "paraiso").

ciudad("cervantes.", "cervantes").
ciudad("cervantes,", "cervantes").
ciudad("cervantes", "cervantes").

ciudad("juanvinas.", "juanvinas").
ciudad("juanvinas,", "juanvinas").
ciudad("juanvinas", "juanvinas").

ciudad("turrialba.", "turrialba").
ciudad("turrialba,", "turrialba").
ciudad("turrialba", "turrialba").

ciudad("cachi.", "cachi").
ciudad("cachi,", "cachi").
ciudad("cachi", "cachi").

ciudad("orosi.", "orosi").
ciudad("orosi,", "orosi").
ciudad("orosi", "orosi").

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
    ciudad(Destiny, X),
    b_setval(destiny, X),
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
    ciudad(Partida, X),
    b_setval(partida, X),
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
    ciudad(Inter, I),
    b_getval(lista_intermedios, L),
    append(L, [I], X),
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
    obtenerRuta(Result, Camino, Costo),
    calcularTiempo(Camino, Tiempo),
    calcularTiempoPresas(Camino, TiempoPresas),
    atomic_list_concat(Camino, ' -> ', Atom),
    atom_string(Atom, String),
    nl,write("EL camino a seguir es el siguiente: "),
    write(String), nl,
    write("La distancia total del recorrido es: "),
    write(Costo),nl,
    write("El tiempo que le tomara el viaje sin presas es: "),
    write(Tiempo),nl,
    write("El tiempo que le tomaria el viaje con presas es: "),
    write(TiempoPresas),nl,nl,
    write("Muchs gracias por usar wazelog").

% Regla de obtener ciudad.
% Reconoce el nombre de una ciudad en las oraciones que el usuario
% ingresa en las preguntas.
obtener_ciudad([X|_], C):- ciudad(C, _), C==X, !.
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

% Nombre: Concatenar.
% Descripcion: retorna una sola lista con cada uno de los elementos
%              de las dos lista recibidads.
% Entradas: dos listas.
% Salidas: una lista.
concatenar([], Lista, Lista).
concatenar([Cabeza|Lista1], Lista2, [Cabeza|Lista3]) :- concatenar(Lista1, Lista2, Lista3).


% Nombre: Ruta.
% Descripcion: retorna una posible ruta entre los dos lugares recibidos.
% Entradas: dos caracteres, dos variables.
% Salidas: un entero y una lista.
ruta(Inicio, Fin, Distancia, Camino) :- ruta(Inicio, Fin, Distancia, [], Camino).

ruta(Inicio, Fin, Distancia, Visitados, [Inicio]) :-
                     \+ memberchk(Inicio, Visitados),
                     arco(Inicio, Fin, Distancia).

ruta(Inicio, Intermedio, Distancia, Visitados, [Inicio|Cola]) :-
                     \+ memberchk(Inicio, Visitados),
                     arco(Inicio, Fin, Distancia1),
                     ruta(Fin, Intermedio, Distancia2, [Inicio|Visitados], Cola),
                     \+ memberchk(Inicio, Cola),
                     Distancia is Distancia1 + Distancia2.


% Nombre: Ruta Mas Corta.
% Descripcion: retorna la ruta ruta mas corta entre los dos lugares
%              recibidos.
% Entradas: dos caracteres y dos variables.
% Salidas: un entero y una lista.
rutaMasCorta(Inicio, Fin, Costo, Camino) :- rutaMasCorta(Inicio, Fin, Costo, _, Camino).

rutaMasCorta(Inicio, Fin, CostoMinimo, Camino, CaminoFinal) :-
                                    ruta(Inicio, Fin, CostoMinimo, Camino),
                                    \+ (ruta(Inicio, Fin, CostoBajo, OtroCamino),
                                    OtroCamino \= Camino,
                                    CostoBajo =< CostoMinimo),
                                    %concatenar(Camino, [Fin], ListaConcatenada),
                                    %CaminoFinal = ListaConcatenada.
                                    CaminoFinal = Camino.


% Nombre: Longitud (Funci�n auxiliar)
% Descripcion: Determina la longitud de una lista.
% Entradas: Una lista.
% Salidas: a longitud de esta lista.
longitud([], 0).

longitud([_|L], Val):- longitud(L, Val1),
                       Val is Val1+1.


% Nombre: Calcular Tiempo
% Descripcion: retorna el tiempo que tarda una ruta especifica.
% Entradas: Una lista que representa el recorrido.
% Salidas: Un entero que representa el tiempo que tardar� el
%          recorrido sin presas.
calcularTiempo(L, 0) :- longitud(L, 1).

calcularTiempo([Cabeza|Cola], Tiempo) :- calcularTiempo(Cabeza, Cola, Tiempo).

calcularTiempo(Cabeza1, [Cabeza2|Cola], Tiempo) :-
                                         tiempo(Cabeza1, Cabeza2, Duracion),
                                         calcularTiempo([Cabeza2|Cola], Suma),
                                         Tiempo is Suma + Duracion.

% Nombre: Calcular Tiempo Presas.
% Descripcion: retorna el tiempo que tarda una ruta especifica con presas.
% Entradas: Una lista que representa el recorrido.
% Salidas: Un entero que representa el tiempo que tardar� el
%          recorrido con presas.
calcularTiempoPresas(L, 0) :- longitud(L, 1).

calcularTiempoPresas([Cabeza|Cola], Tiempo) :- calcularTiempoPresas(Cabeza, Cola, Tiempo).

calcularTiempoPresas(Cabeza1, [Cabeza2|Cola], Tiempo) :-
                                               tiempoPresa(Cabeza1, Cabeza2, Duracion),
                                               calcularTiempoPresas([Cabeza2|Cola], Suma),
                                               Tiempo is Suma + Duracion.

% Nombre: Obtener Ruta.
% Descripcion: retorna la ruta y el costo final del camino recibido.
% Entradas: Una lista y dos variables.
% Salidas: Una lista y un entero.
obtenerRuta(L, L, 0):- 
    longitud(L, 1).

obtenerRuta([Cabeza|Cola], CaminoFinal, Costo) :-
    obtenerRuta(Cabeza, Cola, CaminoFinal, Costo).

obtenerRuta(Cabeza1, [Cabeza2|Cola], CaminoFinal, Costo):-
    rutaMasCorta(Cabeza1, Cabeza2, CostoInt, CaminoInt),
    obtenerRuta([Cabeza2|Cola], CaminoFinal1, Costo1),
    Costo is Costo1+CostoInt,
    concatenar(CaminoInt,CaminoFinal1,CaminoFinal).
