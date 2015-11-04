-module(mylist).
-export([sum/1, map/2]).

sum([H | T]) -> H + sum(T);
sum([])      -> 0.

map(Fun, [H | T]) -> [Fun(H) | map(Fun, T)];
map(_, [])        -> [].
