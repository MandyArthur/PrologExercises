% Matching_Lists.pl

origin(england,[austin, landrover, ford, bentley]).
origin(usa, [buick, oldsmobile, pontiac, ford]).
origin(germany, [audi, volkswagen, porsche, mercedes]). 
origin(sweden, [volvo]). 

% ?- origin(usa,Brands).
% Brands = [buick, oldsmobile, pontiac, ford].

% ?- origin(england, [H|T]).
% H = austin,
% T = [landrover, ford, bentley].
