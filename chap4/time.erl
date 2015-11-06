-module(time).
-import(timer, [now_diff/1]).
-export([my_time_func/1, loop/1]).

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
