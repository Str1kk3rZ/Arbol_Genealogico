%primera generacion

padreDe('Jose','Hernan').
padreDe('Maria','Hernan').
  
padreDe('Juan','Estiven').
padreDe('Adela','Estiven').
  
padreDe('Alberto', 'Marcela').
padreDe('Custodia','Marcela').
  
padreDe('Gildardo','Sandra').
padreDe('Marina','Sandra').
  
padreDe('Edgar','Alexander').
padreDe('Flor','Alexander').
  
padreDe('Mauricio','Cristina').
padreDe('Luz','Cristina').
  
padreDe('Humberto','Milton').
padreDe('Ofelia','Milton').
  
padreDe('JoaquinJ','Gabriela').
padreDe('Emilsen','Gabriela').
  
padreDe('Jairo','Lorena').
padreDe('Doris','Lorena').
  
padreDe('HernanT','Andres').
padreDe('Teresa','Andres').
  
%segunda generacion
  
padreDe('Duvan','Maria').
padreDe('Crelia','Maria').
padreDe('Duvan','Adela').
padreDe('Crelia','Adela').
padreDe('Duvan','Custodia').
padreDe('Crelia','Custodia').
padreDe('Duvan','Gabriel').
padreDe('Crelia','Gabriel').
  
padreDe('Joaquin','Jose').
padreDe('Ernestina','Jose').
padreDe('Joaquin','Jairo').
padreDe('Ernestina','Jairo').
padreDe('Joaquin','Jhon').
padreDe('Ernestina','Jhon').
padreDe('Joaquin','HernanT').
padreDe('Ernestina','HernanT').
padreDe('Joaquin','Marina').
padreDe('Ernestina','Marina').
padreDe('Joaquin','Flor').
padreDe('Ernestina','Flor').
padreDe('Joaquin','Luz').
padreDe('Ernestina','Luz').
padreDe('Joaquin','Ofelia').
padreDe('Ernestina','Ofelia').
padreDe('Joaquin','Emilsen').
padreDe('Ernestina','Emilsen').

%tercera generacion

padreDe('Felix','Ernestina').
padreDe('luisa','Ernestina').
padreDe('Gregorio','Joaquin').
padreDe('Josefa','Joaquin').




hijoDe(A,B) :- padreDe(B,A).
abueloDe(A,B) :- padreDe(A,C), padreDe(C,B).
bisAbueloDe(A,B) :- padreDe(A,C), padreDe(C,D),padreDe(D,B).
tatarAbueloDe(A,B) :- padreDe(A,C), padreDe(C,D),padreDe(D,E),padreDe(E,B).
nietoDe(A,B):- abueloDe(B,A).
bisNietoDe(A,B):- bisAbueloDe(B,A).
tataraNietoDe(A,B):- tatarAbueloDe(B,A).

hermanoDe(A,B) :- padreDe(C,A), padreDe(C,B), A \== B.

tioDe(A,B):- hermanoDe(A,C),padreDe(C,B).
sobrinoDe(A,B):- tioDe(B,A).
tioAbueloDe(A,B):-hermanoDe(A,C),abueloDe(C,B).
sobrinoNietoDe(A,B):-tioAbueloDe(B,A).
bisTioDe(A,B):-hermanoDe(A,C),bisAbueloDe(C,B).
bisSobrinoDe(A,B):-bisTioDe(B,A).
primoDe(A,B):- padreDe(C,A), padreDe(D,B),hermanoDe(C,D).

familiarDe(A,B) :- padreDe(A,B).
familiarDe(A,B) :- abueloDe(A,B).
familiarDe(A,B) :- hermanoDe(A,B).
familiarDe(A,B) :- hijoDe(A,B).

esFeliz(A):- padreDe(A,_).