-module(p13).
-export([decode/1]).

decode([{0, _}|T]) -> decode(T);
decode([{Count, Elem}|T]) -> [Elem|decode([{Count-1, Elem}|T])];

decode([Elem1|T])->[Elem1|decode(T)];
decode([]) ->[].
