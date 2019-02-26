% Problem210
delete(Element, [Element|T], T). 
delete(Element,[H|T], [H|T]):-
delete(Element, T, T1). % swi-prolog.org/pldoc