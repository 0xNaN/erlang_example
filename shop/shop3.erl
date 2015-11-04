-module(shop3).
-export([total/1]).
-import(shop, [cost/1]).
-import(lists, [sum/1]).

total(List) -> sum([cost(What) * N || {What, N} <- List]).
