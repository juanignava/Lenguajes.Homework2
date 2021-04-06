% Definición de los arcos, tiempos y tiempos en presa que
% representan el grafo. SE CMBIARAN A FUTURO.


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


% Definición de los tiempos estimados.
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


% Definición de los tiempos estimados en presas.
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


% Nombre: Conexión.
% Descripción: retorna true si la conexión entre los nodos recibidos
%              existe y false en caso contrario.
% Entradas: dos caracteres.
% Salidas: un booleano.
conexion(Nodol, Nodo2) :- arco(Nodo1, Nodo2, _), !.
conexion(Nodol, Nodo2) :- arco(Nodo2, Nodo1, _).





% Nombre: Camino.
% Descripción: retorna el camino que se debe seguir para llegar al
%              fin saliendo del inicia.
% Entradas: dos caracteres.
% Salidas: una lista.

% camino(Inicio, Fin) :- caminoAux(Inicio, Fin, []).

% caminoAux(Inicio, Fin, [Inicio, X, Fin]) :- conexion(Inicio, X),
  %                                           conexion(X, Fin),
    %                                         X \= Inicio.

% caminoAux(Inicio, Fin, Camino) :- conexion(Inicio, X),
  %                                 conexion(X, Fin).







miembro(Head, [Head|_]).
miembro(Head, [_|Tail]):- miembro(Head, Tail).




camino(Inicio,Fin) :- recorrer(Inicio,Fin,[]).

recorrer(Inicio,Fin,Visitados) :- arco(Inicio,Intermedio),
                                  not(miembro(Intermedio,Visitados)),
                                  (Fin = Intermedio ;
                                  recorrer(Intermedio,Fin,[Inicio|Intermedio])).
