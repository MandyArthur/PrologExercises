
% read_book(Who, What). 
% ---------------
read_book(ivan, tolstoy).
read_book(ivan, donald_duck). 
read_book(ivan, tolkien).
read_book(ivan, playboy). 
read_book(julie, michener). 
read_book(julie, nat_geographic).
read_book(julie, tolkien).
read_book(david, nat_geographic). 
read_book(david, talmud).  
read_book(pierre, puzzo).  
read_book(pierre, sartre).
read_book(pierre, garfield).
read_book(sara, newsweek).   
read_book(sara, michener).
read_book(sara, sjeik_nefzawi).  
read_book(sara, puzzo). 

% What did Pierre read? 
% Puzzo, sartre, garfield
% Answer read_book(pierre, X). 
% Who read tolkien? 
% Ivan, julie. 
% read_book(Y, tolkien).