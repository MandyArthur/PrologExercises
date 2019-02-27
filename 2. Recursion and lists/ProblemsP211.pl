% Problem 211

succeeded(bush, reagan). 
succeeded(reagan, carter).
succeeded(carter, ford).
succeeded(ford, nixon).



predecessor(Predecessor, Successor):-
	succeeded(Successor, Intermediate). 
predecessor(Predecessor, Successor):-
	succeeded(Successor, Intermediate), 
	predecessor(Intermediate, Successor). 
	