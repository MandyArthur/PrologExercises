% Problem 28

dictionary(pete, pierre). 
dictionary(flies, pilote).
dictionary(an, un).
dictionary(aeroplane, avion).

translate([],[]).
translate([Ehead|Etail], [Fhead|Ftail]):-
	dictionary(Ehead,Fhead), 
	translate(Etail, Ftail). 
	