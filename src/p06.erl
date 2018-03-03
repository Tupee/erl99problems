-module(p06).
-export([is_palindrome/1]).

reverse(L) -> reverse(L, []).
reverse([], L) -> L;
reverse([H|T], L) ->reverse(T, [H|L]).

is_palindrome(L) -> is_palindrome(L, reverse(L)).

is_palindrome([],[])-> true;
is_palindrome([H|T],[H|T1]) -> is_palindrome(T, T1);
is_palindrome([H|[]], [H1|[]]) -> true;

is_palindrome(_, _) -> false.
