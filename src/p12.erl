-module(p12).
-export([decode_modified/1]).

decode_modified([{0, _}|T]) -> decode_modified(T);
decode_modified([{Count, Elem}|T]) -> [Elem|decode_modified([{Count-1, Elem}|T])];

decode_modified([Elem1|T])->[Elem1|decode_modified(T)];
decode_modified([]) ->[].
