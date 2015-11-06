-module(time).
-import(timer, [now_diff/1]).
-export([my_time_func/1, loop/1, my_date_string/0]).

loop(0) -> done;
loop(X) -> loop(X - 1).

% example:
%  my_time_func({fun(X) -> loop(X) end, 10000}).
%
my_time_func({F, Args}) ->
    Before = erlang:timestamp(),
    F(Args),
    After = erlang:timestamp(),
    {micros, timer:now_diff(After, Before)}.

my_date_string() ->
    {Y, M, D} = date(),
    io:format("Today is ~w/~w/~w~n", [D, M, Y]),
    {HH, MM, SS} = time(),
    io:format("the current time is ~w:~w:~w~n", [HH, MM, SS]).
