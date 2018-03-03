-module(p11).
-export([encode_modified/1]).

encode_modified([{Count, Elem}|[]]) ->[{Count, Elem}];
encode_modified([{Count, Elem}|[Elem|[]]]) ->[{Count+1, Elem}];

encode_modified([{Count, Elem}|[Elem|T]]) ->encode_modified([{Count+1, Elem}|T]);
encode_modified([{Count, Elem1}|[Elem2|[]]]) ->[{Count, Elem1}, Elem2];
encode_modified([{Count, Elem1}|[Elem2, Elem2|T]]) ->[{Count, Elem1}|encode_modified([{2, Elem2}|T])];
encode_modified([{Count, Elem1}|[Elem2|T]]) ->[{Count, Elem1}|encode_modified([Elem2|T])];
encode_modified([Elem1, Elem1|T])->encode_modified([{2, Elem1}|T]);
encode_modified([Elem1, Elem2|T])->[Elem1|encode_modified([Elem2|T])].
