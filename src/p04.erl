-module(p04).
-export([len/1]).

len([_|[]], C) -> C;
len([_|T], C) -> len(T, C+1).

len([]) -> 0;
len(L) -> len(L, 1).

