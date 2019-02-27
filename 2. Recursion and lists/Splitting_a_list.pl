% Splitting_a_list

% As with member, the definition of apped can also be used in two ways. The alternative use for append is to split up a list into two sublists. 

% Aim: to build a new predicate 'fly' that returns airline name, flight number and stopovers. 

flight(ba, 260, [london, bermuda, baltimore]). 
flight(ba, 262, [baltimore, bermuda, london ]).
flight(ba, 570, [hong_kong, bangkok, colombo, mahe, johannesburg]). 
flight(ba, 572, [johannesburg, mahe, colombo, bangkok , hong_kong]).
flight(ba, 880, [london, abu_dhabi, singapore, perth, sydney]). 
flight(ba, 882, [sydney, perth, singapore, abu_dhabi,london ]). 
flight(qf, 410, [sydney, honolulu, san_francisco]).
flight(qf, 412, [sydney, honolulu, san_francisco]). 
flight(qf, 130, [sydney, perth, harare]). 
flight(qf, 132, [harare, perth,  sydney]). 
flight(qf, 160, [sydney, brisbane, singapore, london]).
flight(qf, 162, [london, singapore, brisbane, sydney]). 
flight(kl, 380, [amsterdam, aruba, panama, quito, lima]). 
flight(kl, 382, [lima, quito, panama, aruba, amsterdam]).
flight(kl, 720, [amsterdam, lisbon, rio, buenos_aires, santiago]).
flight(kl, 722, [santiago,buenos_aires, rio, lisbon, amsterdam]).
flight(kl, 640, [amsterdam, athens, dubai, bangkok, tokyo]).
flight(kl, 642, [tokyo,bangkok, dubai, athens, amsterdam]).  
flight(pa, 610, [hamburg, london, new_york, san_francisco]).
flight(pa, 612, [san_francisco,new_york, london,hamburg]). 
flight(pa, 930, [new_york, dakar, abidjan, lagos, nairobi]). 
flight(pa, 932, [nairobi, lagos, abidjan, dakar, new_york ]). 

% ?- fly(Airline, Flight_no, perth, Stops, abu_dhabi).
% Airline = ba,
% Flight_no = 882,
% Stops = [singapore] ;
% false.

% We're querying whether there is an Airline and flight number that 
% goes from perth to abudabi, if so, what stopovers are there? 


fly(Airline, Flight_no, From, Stop_over, To):- 

% Firstly the relationship between Airline, flight no and Route.  
	
	flight(Airline, Flight_no, Route), 
	
% To make sure that the Route contains the city of departure(From), followed by
% Stop_overs and the destination (To).

% To do this, split the Route into some irrelevant leading list (_)
% and a list that starts with the city of departure. 

	append( _ ,[From | T], Route), 
% The Tail T will have to consist of a number of stopovers and the
% destination To. 

% Thus, split  T up into leading list of stopovers and another list whose head has to be the destination (To). The tail after To is irrelevant 
	append(Stop_over, [To | _], T). 

% USE TRACE TO FULLY UNDERSTAND WHATS GOING ON IN THIS QUERY
