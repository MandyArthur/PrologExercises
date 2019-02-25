% serves_food(Who, What). 
% --------
serves_food(chez_pierre, oysters).
serves_food(chez_pierre, coq_au_vin).
serves_food(greasy_spoon, fish_and_chips).
serves_food(savoy, chateau_briand). 

% ?- serves_food(X, chateau_briand).
% X = savoy.

% ?- serves_food(chez_pierre,Y).
% Y = oysters ;
% Y = coq_au_vin.