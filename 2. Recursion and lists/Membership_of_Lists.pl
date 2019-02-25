% Membership_of_Lists

% The member predicate defines the memebership relationship between an element in the first argument 
% in the first argument if the predicate and a list in the second argument of the predicate. 

flies(quantas, sydney, [perth, harare, singapore, london, hawaii, los_angeles]). 

% To see if your Prolog version has an inbuilt 'member' predicate. Enter this query and see if it succeeds. 
% ?- member(abc, [cbs, abc, nbs]).
% true ;
% false.

% To check if london is part of the list. 

% ?- member(london, [perth, harare, singapore, london, hawaii, los_angeles]).
% true ;
% false.

% Prolog applies shallow bactracking and matches the goal with the head of the reursive rule. 

% Member predicate Backstory 

% The complete member procedure is : 

% member(A, [A|Tail]). 
% member(A, [Head|Tail]):- 
% 	member(A, Tail). 

% But since the variable Tail only appears once in the noundary condition, we can replace it with an underscore. 
% Similarly replace Head in the recursive rule with an underscore. 

% Finally resulting in

% member(A, [A|_]). 
% member(A, [_|Tail]):-
%	member(A,Tail). 

%  No permission to redefine imported_procedure lists:member/2 (If you type this into Prolog and it has an inbuilt function). 

% ?- flies(quantas, sydney, Dest), member(london,Dest).
% Dest = [perth, harare, singapore, london, hawaii, los_angeles] ;
% false.