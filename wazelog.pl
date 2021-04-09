
% Definicion de los hechos del grafo (arcos, ciudades y tiempo)

% arco(Lugar1, Lugar2, DistanciaEntrelugares). * la distancia en km.
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

% tiempo(Lugar1, Lugar2, Tiempo). * el tiempo en minutos.
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

% tiempoPresa(Lugar1, Lugar2, TiempoPresa). * el tiempo en minutos.
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

% ciudad(VarianteNombre, Nombre)
% VarianteNombre: es una variante que se puede encontrar en el programa.
% (solamente hace el programa mas versatil).
% Nombre: nombre de la ciudad sin variante.
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

% afirmativo(Respuesta)
% Respuesta: posible respuesta afirmativa del usuario.
afirmativo("si.").
afirmativo("si,").
afirmativo("si").
afirmativo("sí").

% negativo(Respuesta)
% Respuesta: posible respuesta negativa del usuario.
negativo("no").
negativo("no.").
negativo("no,").
negativo("ninguno").

% Reglas de la interfaz.

% Nombre: wazelog.
% Descripcion: pregunta al usuario por su destino y divide el mensaje en una
% lista de palabras para revisarlo.
wazelog:-
    write("Bienvenido a wazelog, por favor indique el lugar al que se dirige: "),nl,
    b_setval(listaIntermedios, []),
    b_setval(listaRecorridos, []),
    read(OracionDestino),
    string_lower(OracionDestino, OracionDestinoMin),
    split_string(OracionDestinoMin, " ", "", ListaPalabrasDestino),
    determinarDestino(ListaPalabrasDestino).

    %obtenerCiudad(ListaPalabrasDestino, Destino),
    %confirmarDestino(Destino).

determinarDestino(ListaPalabras):-
    oracion1(ListaPalabras, [], L),
    string_concat("A donde se ubica el/la ", L, X),
    string_concat(X, "?", Result),
    write(Result),nl,
    read(OracionDestino),
    string_lower(OracionDestino, OracionDestinoMin),
    split_string(OracionDestinoMin, " ", "", ListaPalabrasDestino),
    obtenerCiudad(ListaPalabrasDestino, Destino),
    confirmarDestino(Destino),
    !.

determinarDestino(ListaPalabras):-
    obtenerCiudad(ListaPalabras, Destino),
    confirmarDestino(Destino).

% Nombre: confirmar destino.
% Descripcion: confirma si el destino ingresado corresponde a una ciudad.
confirmarDestino(Destiny):-
    ciudad(Destiny, Ciudad),
    b_setval(destino, Ciudad),
    wazelogPartida, 
    !.
confirmarDestino(Destiny):- 
    string_concat("Lo sentimos, el destino ", Destiny, Alert),
    write(Alert),
    nl,
    wazelog.

% Nombre: wazelog Partida.
% Descripcion: pregunta al usuario por su punto de partida y divide el mensaje en una
% lista de palabras para revisarlo.
wazelogPartida:-
    nl,
    write("Por favor indique el lugar donde empieza el viaje: "),nl,
    read(OracionPartida),
    string_lower(OracionPartida, OracionPartidaMin),
    split_string(OracionPartidaMin, " ", "", ListaOracion),
    determinarPartida(ListaOracion).
    %obtenerCiudad(ListaOracion, Partida),
    %confirmarPartida(Partida).

determinarPartida(ListaPalabras):-
    oracion1(ListaPalabras, [], L),
    string_concat("A donde se ubica el/la ", L, X),
    string_concat(X, "?", Result),
    write(Result),nl,
    read(OracionPartida),
    string_lower(OracionPartida, OracionPartidaMin),
    split_string(OracionPartidaMin, " ", "", ListaPalabrasPartida),
    obtenerCiudad(ListaPalabrasPartida, Partida),
    confirmarPartida(Partida),
    !.

determinarPartida(ListaPalabras):-
    obtenerCiudad(ListaPalabras, Partida),
    confirmarPartida(Partida).

% Nombre: Confirmar Partida.
% Descripcion: confirma si el punto de partida corresponde a una ciudad.
confirmarPartida(Partida):-
    b_getval(destino, Destino),
    Partida == Destino,
    write("Error, el lugar de partida no puede ser igual a su destino"),
    nl,
    wazelogPartida,
    !.
confirmarPartida(Partida):-
    ciudad(Partida, Ciudad),
    b_setval(partida, Ciudad),
    wazelogIntermedio,
    !.
confirmarPartida(Partida):-
    string_concat("Lo sentimos, el lugar de partida ", Partida, Alerta),
    write(Alerta),
    nl,
    wazelogPartida.

% Nombre: wazelog Intermedio.
% Descripcion: pregunta al usuario por si tiene algun detino intermedio
% y valida si el ligar corresponde a una ciudad valida.
wazelogIntermedio:-
    nl,
    write("Algun (otro) destino intermedio?"),
    nl,
    read(OracionIntermedio),
    string_lower(OracionIntermedio, OracionIntermedioMin),
    split_string(OracionIntermedioMin, " ", "", ListaIntermedio),
    obtenerRespuesta(ListaIntermedio, Intermedio),
    confirmarRespuesta(Intermedio).

% Nombre: Confirmar Respueta.
% Descripcion: confirma si la respuesta a la pregunta es afirmativa o
% negativa.
confirmarRespuesta(Respuesta):-
    afirmativo(Respuesta),
    nl,
    write("Cual es el detino intermedio?"),
    nl,
    read(OracionIntermedio),
    string_lower(OracionIntermedio, OracionIntermedioMin),
    split_string(OracionIntermedioMin, " ", "", ListaIntermedio),
    determinarIntermedio(ListaIntermedio),
    %obtenerCiudad(ListaIntermedio, Ciudad),
    %confirmarIntermedio(Ciudad),
    !.

confirmarRespuesta(Respuesta):-
    negativo(Respuesta),
    wazelogFinal,
    !.

confirmarRespuesta(Respuesta):-
    string_concat(Respuesta, ", por favor responda si o no", Alert),
    write(Alert),
    nl,
    wazelogIntermedio.

determinarIntermedio(ListaPalabras):-
    oracion1(ListaPalabras, [], L),
    string_concat("A donde se ubica el/la ", L, X),
    string_concat(X, "?", Result),
    write(Result),nl,
    read(OracionIntermedio),
    string_lower(OracionIntermedio, OracionIntermedioMin),
    split_string(OracionIntermedioMin, " ", "", ListaPalabrasIntermedio),
    obtenerCiudad(ListaPalabrasIntermedio, Intermedio),
    confirmarIntermedio(Intermedio),
    !.

determinarIntermedio(ListaPalabras):-
    obtenerCiudad(ListaPalabras, Intermedio),
    confirmarIntermedio(Intermedio).

% Nombre: Confirmar Intermedio.
% Descripcion: Determina si el lugar es ingresado ya fue tomado en cuenta como destino,
% como partida u otro intermedio.
confirmarIntermedio(Inter):-
    b_getval(destino, Destino),
    Inter == Destino,
    write("Error: el lugar intermedio no puede ser igual a su destino."),
    nl,
    wazelogIntermedio,
    !.
confirmarIntermedio(Inter):-
    b_getval(partida, Partida),
    Inter == Partida,
    write("Error: el lugar intermedio no puede ser igual a su lugar de partida."),
    nl,
    wazelogIntermedio,
    !.
confirmarIntermedio(Inter):-
    b_getval(listaIntermedios, L),
    member(Inter, L),
    write("Error: el lugar intermedio ya fue tomado en cuenta"),
    nl,
    wazelogIntermedio,
    !.
confirmarIntermedio(Inter):-
    ciudad(Inter, I),
    b_getval(listaIntermedios, Lista),
    append(Lista, [I], ListaNueva),
    b_setval(listaIntermedios, ListaNueva),
    wazelogIntermedio,
    !.
confirmarIntermedio(Inter):-
    string_concat("Lo sentimos su lugar intermedio ", Inter, Alerta),
    write(Alerta),nl,
    wazelogIntermedio.

% Regla final del programa.
% Se crea la lista ruta que el usuario determinó.
wazelogFinal:-
    b_getval(destino, Destino),
    b_getval(partida, Partida),
    b_getval(listaIntermedios, Lista),
    append([Partida], Lista, X),
    append(X, [Destino], Resultado),
    obtenerRuta(Resultado, Camino, Costo),
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
    write("Muchas gracias por usar wazelog").

% Nombre: obtener ciudad.
% Reconoce el nombre de una ciudad en las oraciones que el usuario
% ingresa en las preguntas.
% obtenerCiudad(Oracion, Ciudad)
obtenerCiudad([X|_], C):- ciudad(C, _), C==X, !.
obtenerCiudad([], "no existe").
obtenerCiudad([_|List], C):- 
    obtenerCiudad(List, C).




oracion1(S1, S, Lugar):- %sujeto1(S0, S1),
    verbo1(S1, S2), 
    complemento(S2, S, Lugar).

sujeto1(["yo"|S], S).
sujeto1(["me"|S], S).

verbo1(["voy"|S], S).
verbo1(["dirijo"|S], S).
verbo1(["quiero_ir"|S], S).
verbo1(["camino"|S], S).
verbo1(["estoy"|S], S).
verbo1(["queda"|S], S).

complemento(S0, S, Lugar):- articulo(S0, [Lugar|S1]),
    nombre([Lugar|S1], S).

articulo(["al"|S], S).
articulo(["a_la"|S], S).
articulo(["a"|S], S).
articulo(["en"|S], S).

nombre(["super"|S], S).
nombre(["casa"|S], S).
nombre(["mall"|S], S).
nombre(["hospital"|S], S).

% Nombre: Obtener Respuesta.
% Reconoce las posible respuestas afirmativas o negativas del
% usuario en las preguntas.
% obtenerRespuesta(Oracion, Respuesta).
obtenerRespuesta([X|_], R):- afirmativo(R), R==X, !.
obtenerRespuesta([X|_], R):- negativo(R), R==X, !.
obtenerRespuesta([], "Respuesta no valida").
obtenerRespuesta([_|List], R):-
    obtenerRespuesta(List, R).

% Nombre: Concatenar.
% Descripcion: retorna una sola lista con cada uno de los elementos
% de las dos lista recibidads.
% concatenar(Lista1, Lista2, Lista3). * con Lista3 = Lista1 + Lista 2 concatenadas.
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
% recibidos.
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


% Nombre: Longitud (Funcion auxiliar)
% Descripcion: Determina la longitud de una lista.
%longitud(Lista, LongitudDeLista)
longitud([], 0).

longitud([_|L], Val):- longitud(L, Val1),
                       Val is Val1+1.


% Nombre: Calcular Tiempo
% Descripcion: retorna el tiempo que tarda un recorrido especifico
% ingresado como lista.
% calcularTiempo(ListaDeREcorrido, TiempoRecorrido)
calcularTiempo(L, 0) :- longitud(L, 1).

calcularTiempo([Cabeza|Cola], Tiempo) :- calcularTiempo(Cabeza, Cola, Tiempo).

calcularTiempo(Cabeza1, [Cabeza2|Cola], Tiempo) :-
                                         tiempo(Cabeza1, Cabeza2, Duracion),
                                         calcularTiempo([Cabeza2|Cola], Suma),
                                         Tiempo is Suma + Duracion.

% Nombre: Calcular Tiempo Presas.
% Descripcion: retorna el tiempo que tarda una ruta especifica con presas.
% calcularTiempoPresas(ListaRecorrido, TiempoPresas)
calcularTiempoPresas(L, 0) :- longitud(L, 1).

calcularTiempoPresas([Cabeza|Cola], Tiempo) :- calcularTiempoPresas(Cabeza, Cola, Tiempo).

calcularTiempoPresas(Cabeza1, [Cabeza2|Cola], Tiempo) :-
                                               tiempoPresa(Cabeza1, Cabeza2, Duracion),
                                               calcularTiempoPresas([Cabeza2|Cola], Suma),
                                               Tiempo is Suma + Duracion.

% Nombre: Obtener Ruta.
% Descripcion: retorna la ruta y el costo final del camino recibido.
% obtenerRuta(ListaDeDestinos, RutaMasCorta, Distancia).
obtenerRuta(L, L, 0):- 
    longitud(L, 1).

obtenerRuta([Cabeza|Cola], CaminoFinal, Costo) :-
    obtenerRuta(Cabeza, Cola, CaminoFinal, Costo).

obtenerRuta(Cabeza1, [Cabeza2|Cola], CaminoFinal, Costo):-
    rutaMasCorta(Cabeza1, Cabeza2, CostoInt, CaminoInt),
    obtenerRuta([Cabeza2|Cola], CaminoFinal1, Costo1),
    Costo is Costo1+CostoInt,
    concatenar(CaminoInt,CaminoFinal1,CaminoFinal).
