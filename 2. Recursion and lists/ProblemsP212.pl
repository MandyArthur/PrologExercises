% Problem212

contents(warehouse8, [lot737, lot738, lot791, lot788, lot793]).

perish(lot737, june, 2).
perish(lot738, june, 4).
perish(lot791, june, 8).
perish(lot788, june, 8).
perish(lot793, july, 9).

% dumping practice

dump(Lot):-
	current_date(Month, Day), 
	contents(_, ContentsList), 
	perish(Lot, Month, Day), 
	member(Lot, ContentsList). 

current_date(june, 8). 
	