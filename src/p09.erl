-module(p09).
-export([pack/1]).

pack(H, [H|T], Acc) ->pack(H, T, [H|Acc]);
pack(H, [H1|T], Acc) ->[Acc|pack([H1|T])].

pack([H|[H|T]]) -> pack(H, T, [H, H]);
pack([H|[H1|T]]) -> [[H]| pack([H1|T])];
pack(H) -> [H];
pack([]) -> [].
