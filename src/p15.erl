-module(p15).
-export([replicate/2]).

reverse(L) ->reverse(L,[]).

reverse([H|[]], Acc)->[H|Acc];
reverse([H|T], Acc) ->reverse(T, [H|Acc]).
%reverse([], Acc) -> Acc.
%repeat(H, Count) ->
%[H ,repeat(H, Count-1)].

replicate(_, _, 0, Acc, []) ->reverse(Acc);
replicate(_, Count, 0, Acc, [H1|T]) -> replicate(H1, Count, Count, Acc, T);
replicate(H, Count, DC, Acc, T) -> replicate(H, Count, DC-1, [H|Acc], T).

replicate([], _) ->[];
replicate([H|T], Count) -> replicate(H, Count, Count, [], T).
