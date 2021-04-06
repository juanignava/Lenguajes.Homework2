arco(a,b,1).
arco(b,e,2).
arco(a,c,3).
arco(c,d,2).
arco(e,d,3).
arco(d,f,2).
arco(d,g,3).

encontrarCamino(Inicio, Fin, Peso, [Inicio,Fin], _) :- arco(Inicio, Fin, Peso).
encontrarCamino(Inicio, Fin, Peso, [Inicio|Camino], Visitados) :- \+ member(Inicio, Visitados),
                                 arco(Inicio, Intermedio, Peso1),
                                 encontrarCamino(Intermedio, Fin, Peso2, Camino, [Inicio|Visitados]),
                                 Peso is Peso1 + Peso2.

