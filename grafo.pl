% Definicion de los arcos, tiempos y tiempos en presa que representan el
% grafo.

% arco(lugar1, lugar2, distancia en Km).
arco(sanJose, cartago, 20).
arco(sanJose, corralillo, 22).

arco(tresRios, sanJose, 8).
arco(tresRios, pacayas, 15).

arco(cartago, sanJose, 20).
arco(cartago, tresRios, 8).
arco(cartago, musgoVerde, 10).
arco(cartago, pacayas, 13).
arco(cartago, paraiso, 10).

arco(pacayas, tresRios, 15).
arco(pacayas, cartago, 13).
arco(pacayas, cervantes, 8).

arco(corralillo, sanJose, 22).
arco(corralillo, musgoVerde, 6).

arco(musgoVerde, corralillo, 6).
arco(musgoVerde, cartago, 10).

arco(cervantes, pacayas, 8).
arco(cervantes, cachi, 7).
arco(cervantes, juanVi�as, 5).

arco(paraiso, cervantes, 4).
arco(paraiso, cachi, 10).
arco(paraiso, orosi, 8).

arco(cachi, paraiso, 10).
arco(cachi, orosi, 12).
arco(cachi, cervantes, 7).
arco(cachi, turrialba, 40).

arco(orosi, paraiso, 8).
arco(orosi, cachi, 12).

arco(juanVi�as, turrialba, 4).

arco(turrialba, cachi, 40).
arco(turrialba, pacayas, 18).


% Definicion de los tiempos estimados.
% tiempo(lugar1, lugar2, tiempo en minutos).
tiempo(sanJose, cartago, 20).
tiempo(sanJose, corralillo, 22).

tiempo(tresRios, sanJose, 8).
tiempo(tresRios, pacayas, 15).

tiempo(cartago, sanJose, 20).
tiempo(cartago, tresRios, 8).
tiempo(cartago, musgoVerde, 10).
tiempo(cartago, pacayas, 13).
tiempo(cartago, paraiso, 10).

tiempo(pacayas, tresRios, 15).
tiempo(pacayas, cartago, 13).
tiempo(pacayas, cervantes, 8).

tiempo(corralillo, sanJose, 22).
tiempo(corralillo, musgoVerde, 6).

tiempo(musgoVerde, corralillo, 6).
tiempo(musgoVerde, cartago, 10).

tiempo(cervantes, pacayas, 8).
tiempo(cervantes, cachi, 7).
tiempo(cervantes, juanVi�as, 5).

tiempo(paraiso, cervantes, 4).
tiempo(paraiso, cachi, 10).
tiempo(paraiso, orosi, 8).

tiempo(cachi, paraiso, 10).
tiempo(cachi, orosi, 12).
tiempo(cachi, cervantes, 7).
tiempo(cachi, turrialba, 40).

tiempo(orosi, paraiso, 8).
tiempo(orosi, cachi, 12).

tiempo(juanVi�as, turrialba, 4).

tiempo(turrialba, cachi, 40).
tiempo(turrialba, pacayas, 18).


% Definicion de los tiempos estimados en presas.
% tiempoPresa(lugar1, lugar2, tiempo en minutos).
tiempoPresa(sanJose, cartago, 40).
tiempoPresa(sanJose, corralillo, 44).

tiempoPresa(tresRios, sanJose, 16).
tiempoPresa(tresRios, pacayas, 30).

tiempoPresa(cartago, sanJose, 40).
tiempoPresa(cartago, tresRios, 16).
tiempoPresa(cartago, musgoVerde, 20).
tiempoPresa(cartago, pacayas, 26).
tiempoPresa(cartago, paraiso, 20).

tiempoPresa(pacayas, tresRios, 30).
tiempoPresa(pacayas, cartago, 26).
tiempoPresa(pacayas, cervantes, 16).

tiempoPresa(corralillo, sanJose, 44).
tiempoPresa(corralillo, musgoVerde, 12).

tiempoPresa(musgoVerde, corralillo, 12).
tiempoPresa(musgoVerde, cartago, 20).

tiempoPresa(cervantes, pacayas, 16).
tiempoPresa(cervantes, cachi, 14).
tiempoPresa(cervantes, juanVi�as, 10).

tiempoPresa(paraiso, cervantes, 8).
tiempoPresa(paraiso, cachi, 20).
tiempoPresa(paraiso, orosi, 16).

tiempoPresa(cachi, paraiso, 20).
tiempoPresa(cachi, orosi, 24).
tiempoPresa(cachi, cervantes, 14).
tiempoPresa(cachi, turrialba, 80).

tiempoPresa(orosi, paraiso, 16).
tiempoPresa(orosi, cachi, 24).

tiempoPresa(juanVi�as, turrialba, 8).

tiempoPresa(turrialba, cachi, 80).
tiempoPresa(turrialba, pacayas, 36).


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


obtenerRuta(L, [], 0):- longitud(L, 1).

%obtenerRuta([], [], 0).

obtenerRuta([Cabeza|Cola], CaminoFinal, Costo) :-
    obtenerRuta(Cabeza, Cola, CaminoFinal, Costo).

obtenerRuta(Cabeza1, [Cabeza2|Cola], CaminoFinal, Costo):-
    rutaMasCorta(Cabeza1, Cabeza2, CostoInt, CaminoInt),
    obtenerRuta([Cabeza2|Cola], CaminoFinal1, Costo1),
    Costo is Costo1+CostoInt,
    concatenar(CaminoInt,CaminoFinal1,CaminoFinal).




obtenerRutaCostoTiempos(L, [], 0, 0, 0) :- longitud(L, 1).

obtenerRutaCostoTiempos([Cabeza|Cola], CaminoFinal, Costo, Tiempo, TiempoPresas) :-
                     obtenerRutaCostoTiempos(Cabeza, Cola, CaminoFinal, Costo, Tiempo, TiempoPresas).

obtenerRutaCostoTiempos(Cabeza1, [Cabeza2|Cola], CaminoFinal, Costo, Tiempo, TiempoPresas) :-

                    rutaMasCorta(Cabeza1, Cabeza2 , Costo1, Camino1),
                    tiempo(Cabeza1, Cabeza2, Tiempo1),
                    tiempoPresa(Cabeza1, Cabeza2, Tiempo2),
                    obtenerRutaCostoTiempos([Cabeza2|Cola], Camino2, Costo2, Tiempo3, TiempoPresas1),

                    concatenar(Camino1, Camino2, ListaConcatenada),
                    CaminoFinal = ListaConcatenada,

                    Costo is Costo1 + Costo2,

                    Tiempo is Tiempo1 + Tiempo3,

                    TiempoPresas is Tiempo2 + TiempoPresas1.



