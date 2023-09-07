% implement a function that deletes the first occurrence of an element from a list
%
%
-module(delete).
-export([delete/2]).

delete(_, []) -> [];
delete(N, [N|Xs]) -> Xs;
delete(N, [X|Xs]) -> [Y|delete(N, Xs)].

