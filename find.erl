% find and return an element in a list
%
-module(find).
-export([find/2]).

find(N, [X|_], M) when M =:= N -> {found, X};
find(N, [_|Xs], M) when M =/= N -> find(N, Xs, M+1);
find(_, [], _) -> [].
find(N, L) when N>length(L) -> not_found;
find(N, L) when N=<length(L) -> find(N, L, 1).
