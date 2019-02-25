% Problem213

delete(Element, [Element | T], T). 
delete(Element, [H | T], [H | Tl]:-
	delete(Element, T, Tl). 
	
permutation([], []). 
permutation(List, [Element | Tail]):-
	delete(Element, List, Remainder), 
	permutation(Remainder, Tail). 
	
