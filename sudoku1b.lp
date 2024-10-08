% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
x(1..4). % Rows
y(1..4). % Columns
n(1..4). % Numbers


{sudoku(X,Y,N): n(N)}=1 :- y(Y), x(X).

subgrid(X,Y,G) :- G = 1+(((X-1)/2)*2+(Y-1)/2), y(Y), x(X).

sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y,N), sudoku(NX,Y,N), X != NX.
:- sudoku(X,Y,N), sudoku(X,NY,N), Y != NY.


#show subgrid/3.
#show sudoku/3.