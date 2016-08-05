%% =========================================================================================
%% @doc
%% P04 (*) Посчитать количество элементов списка:
%% Пример:
%% 1> p04:len([]).
%% 0
%% 2> p04:len([a,b,c,d]).
%% 4
%% @end
%% =========================================================================================
-module(p04).

-include_lib("eunit/include/eunit.hrl").

-export([
		len/1
	]).

% We going to save counter in second argument.
len(List) -> len(List,0).

len([], N) 			-> N;
len([_H|T], N) 		-> len(T, N+1).

% ======================================== test suite ======================================

len_char_test() -> 
	4 = len([a,b,c,d]).

len_num_test() -> 
	7 = len([a,b,c,d,g,3,4]).
