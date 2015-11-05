-module(geo_test).
-export([test/0]).
-import(geometry, [area/1]).

test() ->
    12  = area({rectangle, 3, 4}),
    144 = area({square, 12}),
    15.0  = area({triangle, 5, 6}),
    test_worked.
