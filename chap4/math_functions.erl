-module(math_functions).
-export([even/1,
         odd/1,
         filter/2,
         split_filter/1,
         split_acc/1]).

even(X) -> X rem 2 =:= 0.

odd(X) -> not even(X).

filter(F, L) -> [X || X <- L, F(X)].

split_filter(L) ->
    Even = filter(fun(X) -> even(X) end, L),
    Odd  = filter(fun(X) -> odd(X) end, L),
    {Even, Odd}.

split_acc(L) -> split_acc_hlp(L, [], []).
split_acc_hlp([], Even, Odd) -> {lists:reverse(Even), lists:reverse(Odd)};
split_acc_hlp([H | T], Even, Odd) when H rem 2 =:= 0 -> split_acc_hlp(T, [H | Even], Odd);
split_acc_hlp([H | T], Even, Odd) -> split_acc_hlp(T, Even, [H | Odd]).

