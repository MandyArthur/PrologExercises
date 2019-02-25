% employee(Fname, Surname, Sex, Seniority, Function, Salary, Start). 
% ----------------------------------------

employee(chris, burlow, male, junior, programmer, 68000, 1987). 
employee(jill, kaufmann, female, junior, programmer, 72000, 1986). 
employee(rod, pescatore, male, senior, analyst, 95000, 1987). 
employee(frances, bliss, female, junior, secretary, 35000, 1987). 
employee(joanne, jerez, female, senior, secretary, 44000, 1987).
employee(john, gray, male, senior, analyst, 98000, 1986).
employee(richard, waldorf, male, senior, programmer, 79000, 1986). 
employee(peter, blackburn, male, junior, consultant, 65000, 1987).
employee(maria, sarde, female, senior, consultant, 77500, 1986).
 
 
%?- employee(Firstname, Surname, male, _, _, _, _).
%Firstname = chris,
%Surname = burlow ;
%Firstname = rod,
%Surname = pescatore ;
%Firstname = john,
%Surname = gray ;
%Firstname = richard,
%Surname = waldorf ;
%Firstname = peter,
%Surname = blackburn.
%------------------------
%  employee(FirstName,Surname,_, _,programmer, _,1986).
% FirstName = jill,
% Surname = kaufmann ;
% FirstName = richard,
% Surname = waldorf.
% ?- employee(jill, _, _, _, programmer, Salary, _).
% Salary = 72000.
%------------------------
% ?- employee(FirstName,Surname,female,senior,Function, _,_).FirstName = joanne,
% Surname = jerez,
%Function = secretary ;
%FirstName = maria,
%Surname = sarde,
% Function = consultant.
%------------------------
%?- employee(_,_,male,_,secretary, _,Start).
% false.
%------------------------
%?- employee(_,_,female,senior,consultant,_,_).
%true.
