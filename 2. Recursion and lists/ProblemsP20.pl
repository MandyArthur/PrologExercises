% Problem P210

% Write a predicate that deletes an element (first argument) from a list (second argument)
% and matches the third argument with the remainder of the list after the element has been removed. 

delete(Element, [Element|T], T).
	delete(Element, [H|T], [H|T1]):-
		delete(Element, T, T1). 
	
	

