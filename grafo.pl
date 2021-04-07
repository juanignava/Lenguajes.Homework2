% Definicion de los arcos, tiempos y tiempos en presa que representan el
% grafo. SE CMBIARAN A FUTURO.


% arco(lugar1, lugar2, distancia en Km).
arco(sanJose, heredia, 30).
arco(sanJose, alajuela, 40).
arco(sanJose, cartago, 15).
arco(sanJose, limon, 25).

arco(cartago, sanJose, 15).
arco(cartago, limon, 20).

arco(limon, sanJose, 25).
arco(limon, cartago, 20).
arco(limon, alajuela, 35).

arco(heredia, sanJose, 30).
arco(heredia, alajuela, 10).

arco(alajuela, heredia, 10).
arco(alajuela, sanJose, 40).
arco(alajuela, limon, 35).


% Definicion de los tiempos estimados.
% tiempo(lugar1, lugar2, tiempo en minutos).
tiempo(sanJose, heredia, 60).
tiempo(sanJose, alajuela, 80).
tiempo(sanJose, cartago, 40).
tiempo(sanJose, limon, 120).

tiempo(cartago, sanJose, 40).
tiempo(cartago, limon, 70).

tiempo(limon, sanJose, 120).
tiempo(limon, cartago, 70).
tiempo(limon, alajuela, 150).

tiempo(heredia, sanJose, 60).
tiempo(heredia, alajuela, 45).

tiempo(alajuela, heredia, 45).
tiempo(alajuela, sanJose, 80).
tiempo(alajuela, limon, 150).


% Definicion de los tiempos estimados en presas.
% tiempoPresa(lugar1, lugar2, tiempo en minutos).
tiempoPresa(sanJose, heredia, 120).
tiempoPresa(sanJose, alajuela, 160).
tiempoPresa(sanJose, cartago, 80).
tiempoPresa(sanJose, limon, 240).

tiempoPresa(cartago, sanJose, 80).
tiempoPresa(cartago, limon, 140).

tiempoPresa(limon, sanJose, 240).
tiempoPresa(limon, cartago, 140).
tiempoPresa(limon, alajuela, 300).

tiempoPresa(heredia, sanJose, 120).
tiempoPresa(heredia, alajuela, 90).

tiempoPresa(alajuela, heredia, 90).
tiempoPresa(alajuela, sanJose, 160).
tiempoPresa(alajuela, limon, 300).


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
                                    concatenar(Camino, [Fin], ListaConcatenada),
                                    CaminoFinal = ListaConcatenada.


% Nombre: Calcular Tiempo
% Descripcion: retorna el tiempo que tarda una ruta especifica.
% Entradas: Una lista que representa el recorrido.
% Salidas: Un entero que representa el tiempo que tardará el
%          recorrido sin presas.
calcularTiempo(L, 0) :- longitud(L, 1).

calcularTiempo([Cabeza|Cola], Tiempo) :- calcularTiempo(Cabeza, Cola, Tiempo).

calcularTiempo(Cabeza1, [Cabeza2|Cola], Tiempo) :-
                                tiempo(Cabeza1, Cabeza2, Duracion),
                                write(Duracion),nl,
                                calcularTiempo([Cabeza2|Cola], Suma),
                                Tiempo is Suma+Duracion.

% Nombre: Calcular Tiempo Presas.
% Descripcion: retorna el tiempo que tarda una ruta especifica con presas.
% Entradas: Una lista que representa el recorrido.
% Salidas: Un entero que representa el tiempo que tardará el
%          recorrido con presas.
calcularTiempoPresas(L, 0) :- longitud(L, 1).

calcularTiempoPresas([Cabeza|Cola], Tiempo) :- calcularTiempoPresas(Cabeza, Cola, Tiempo).

calcularTiempoPresas(Cabeza1, [Cabeza2|Cola], Tiempo) :-
                                tiempoPresa(Cabeza1, Cabeza2, Duracion),
                                write(Duracion),nl,
                                calcularTiempoPresas([Cabeza2|Cola], Suma),
                                Tiempo is Suma+Duracion.

% Nombre: Longitud (Función auxiliar)
% Descripcion: Determina la longitud de una lista.
% Entradas: Una lista.
% Salidas: La longitud de esta lista.
longitud([], 0).
longitud([_|L], Val):-
    longitud(L, Val1),
    Val is Val1+1.