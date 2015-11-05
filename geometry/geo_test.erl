-module(geo_test).
-import(geometry, [area/1, perimeter/1]).

-export([test_area/0,
         test_perimeter/0]).

test_area() ->
    12  = area({rectangle, 3, 4}),
    144 = area({square, 12}),
    15.0  = area({triangle, 5, 6}),
    test_worked.

test_perimeter() ->
    40 = perimeter({square, 10}),
    6  = perimeter({rectangle, 1, 2}),
    test_worked.

