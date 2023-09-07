% reverse a list
%
%
-module(reverse).
-export([reverse/1]).

reverse([]) -> [];
reverse([X|Xs]) -> reverse(Xs) ++ [X].
