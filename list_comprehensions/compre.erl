-module(compre).
-export([pythag/1]).
-import(lists, [seq/2]).

pythag(N) ->
    [ {A, B, C} ||
            A <- seq(1, N),
            B <- seq(1, N),
            C <- seq(1, N),
            A + B + C =< N,
            A*A + B*B =:= C*C
    ].
