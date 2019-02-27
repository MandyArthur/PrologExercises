% Example_using_membership_in_a_different_way
% flight(Airline, Route). 
% Create a procedure which states the routes of a few airlines in the above form. 

flight(ba, [london, bermuda, baltimore]). 
flight(qf, [sydney, honolulu, san_francisco]). 
flight(kl, [amsterdam, aruba, panama, quito, lima]). 
flight(ba, [hong_kong, bangkok, colombo, mahe, johannesburg]). 
flight(ba, [london, abu_dhabi, singapore, perth, sydney]). 
flight(qf, [sydney, perth, harare]). 
flight(qf, [sydney, brisbane, singapore, london]). 
flight(kl, [amsterdam, lisbon, rio, buenos_aires, santiago]). 
flight(kl, [amsterdam, athens, dubai, bangkok, tokyo]). 
flight(pa, [hamburg, london, new_york, san_francisco]). 
flight(pa, [new_york, dakar, abidjan, lagos, nairobi]). 

% Is there an airline that flies from London to Sydney? If yes, find airline. 

fly(Airline, From, To):-
	flight(Airline, Route), 
	member(From, Route), 
	member(To, Route). 

% ?- fly(Airline, london, sydney).
% Airline = ba ;
% Airline = qf ;
% false. 
	
% ?- member(Element, [perth, harare, singapre, london]). 
% Element = perth ;
% Element = harare ;
% Element = singapre ;
% Element = london.



