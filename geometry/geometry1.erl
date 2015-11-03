-module(geometry1).
-export([area/1, test/0]).

test() ->
    12  = area({rectangle, 3, 4}),
    144 = area({square, 12}),
    test_worked.

area({rectangle, Width, Height})  -> Width * Height;
area({square, Side})              -> Side * Side.
