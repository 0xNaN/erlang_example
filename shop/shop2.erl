-module(shop2).
-export([total/1]).
-import(mylist, [sum/1, map/2]).

total(L) -> sum(map(fun({What, N}) -> shop:cost(What) * N end, L)).
