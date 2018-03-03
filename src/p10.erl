-module(p10).
-export([encode/1]).

encode([H|[H|T]]) ->encode(H, T, 2, []).

encode(H, [H|T], I, Acc) ->encode(H, T, I+1, Acc);
encode(H, [H1|T], I, Acc) ->encode(H1, T, 1, [{I, H}|Acc]);
encode(H, [], I, Acc) ->reverse([{I, H}|Acc]).

reverse(L) -> reverse(L, []).
reverse([], L) -> L;
reverse([H | T], L) -> 
	L,	
	reverse(T, [H | L]).


