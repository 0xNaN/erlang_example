-module(shop1).
-export([total/1]).

total([{What, N} | Rest]) -> shop:cost(What) * N + total(Rest);
total([])                -> 0.
