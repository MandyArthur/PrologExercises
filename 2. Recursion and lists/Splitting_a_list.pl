% Splitting_a_list

% As with member, the definition of apped can also be used in two ways. The alternative use for append is to split up a list into two sublists. 

% Aim: to build a new predicate 'fly' that returns airline name, flight number and stopovers. 

flight(ba, 260, [london, bermuda, baltimore]). 
flight(ba, 262, [baltimore, bermuda, london ]).
flight(ba, 570, [hong_kong, bangkok, colombo, mahe, johannesburg]). 

flight(qf, [sydney, honolulu, san_francisco]). 
flight(kl, [amsterdam, aruba, panama, quito, lima]). 

flight(ba, [london, abu_dhabi, singapore, perth, sydney]). 
flight(qf, [sydney, perth, harare]). 
flight(qf, [sydney, brisbane, singapore, london]). 
flight(kl, [amsterdam, lisbon, rio, buenos_aires, santiago]). 
flight(kl, [amsterdam, athens, dubai, bangkok, tokyo]). 
flight(pa, [hamburg, london, new_york, san_francisco]). 
flight(pa, [new_york, dakar, abidjan, lagos, nairobi]). 
