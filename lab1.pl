%fibonacci i mamy podac to w posaci listy

fib(0,0).
fib(1,1).
fib(N, A) :- N1 is N - 1, N2 is N - 2, fib(N1, A1), fib(N2,A2), A is A1+ A2.

fibonacci(0,[]).
fibonacci(N,L):- N1 is N-1, fib(N, X), fibonacci(N1,L1), append(L1,[X],L).



%lista [1,2,3,4,5,6,7,8] ==> [1+2,3+4,5+6,7+8] = [3,7,11,15]

sum_list([],[]).
sum_list([X|[]],[X]).
sum_list([A,B|N],[H|L]):- H is A + B, sum_list(N,L).