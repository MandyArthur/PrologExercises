% Recursion: A relationship that is defined in terms of itself means that the body of the rule contains the same 
% predicate name as the head. 

owns(trans_city, first_ny). 
owns(trans_city, first_boston).
owns(trans_city, tokyo_city).
owns(first_boston, boston_tech).  
owns(first_boston, boston_agro).
owns(first_ny, ny_city). 
owns(first_ny, ny_agro). 

% The owns predicate alone is limited to answering queries about direct ownership relationships. 
% We are interested in teh indirect relation between banks that are connected by a chain of 
% direct ownership relationships

% Write a procedure that defines a predicate subsidiary , which represents both teh direct and the indirect variations of the ownership
% relationship. Consists of 2 rules, one of which - the rule that represents indirect ownership - is recursive. 

subsidiary(Holding, Subsidiary):-
	owns(Holding, Subsidiary). 
	
% This is the boundary rule that prevents prolog from calling itself infinitely in an endless loop. 

% Second rule; Indirect ownership: a (subsidiary) bank is a subsidiary of a holding if the holding owns an intermediate banks, and the (subsidiary) 
% banks is a subsidiary of the intermediate bank. 


subsidiary(Holding, Subsidiary):-
	owns(Holding, Intermediate), 
	subsidiary(Intermediate, Subsidiary). 

% This is a recursive rule because the predicate subsidiary is one of the conditions for itself: the predicate
% in the head of teh rule reapprears as one of the conditions in the body of the rule. 

% Each time the recursive rule is applied it adds an intermediate bank to make the chain longer:
% if the recursive rule is applied twice to prove a query, then the chain contains three direct ownership 
% relationships and four banks. The chain is always terminated by the use of teh first, non-recursive, rule for direct ownership. 

% ?- subsidiary(trans_city, burkman).
% false.
% This is correct, there is no DIRECT ownership between these banks. Subsequent bacjtracking force-fals the current match for the subsidiary
% goal and undoes the bindngs of the variables. 

% You can use either of the below. If you use both, it will state true twice. 

subsidiary(first_ny, burkman). 
subsidiary(ny_city, burkman). 

% By adding the above line, we are saying that burkman is in fact a subsidiary of First_NY, which later 
% allows us to query whether trans_city is a holding of burkman. 



contain(pizza, tomato). 
contain(pizza, paste).
contain(heinz, beans).
contain(soup, cornsyrup).

perishable(tomato, perishable). 

perishable(Food, Isperishable):-
	contain(Food, Ingredients), 
	perishable(Ingredients, Isperishable). 
	

% P2.2 

contains(b1, b2). 
contains(b1, b3).
contains(b1, b4).
contains(b1, b5).
contains(b2, b9).
contains(b2, b10).
contains(b5, b6).
contains(b5, b7).
contains(b7, b8).

encloses(b5, b8). 



encloses(Boxa, Boxb):-
		contains(Boxa, Place), 
		encloses(Place, Boxb). 