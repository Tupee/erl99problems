-module(p08).
-export([compress/1]).

compress(L) -> compress(L, []).

compress([H|[H|T]], L) ->compress([H|T], L);
compress([H1|[H|T]], L) ->compress([H|T], [H1|L]);

compress([H|[]], L) ->[H|L];

compress([], L) -> L.
