% ProblemsP27

dispatch(monday, [lot506, lot737, loot738, lot741, lot890]). 
dispatch(tuesday, [lot663, lot667]).
dispatch(wednesday,[]).

fragile([lot738, lot741, lot667, lot506]). 

% Fragile goods rewuire special packaging on the day 

package(Day, Lot):-
	dispatch(Day, LotList),
	fragile(FragileList), 
		member(Lot, LotList), 
		member(Lot, FragileList).

% ?- package(tuesday,Lot).
% Lot = lot667 ;
% false.

% ?- package(monday,Lot).
% Lot = lot506 ;
% Lot = lot741 ;
% false.