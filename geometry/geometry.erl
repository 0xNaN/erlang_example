-module(geometry). % module declartion %
-export([area/1, % exported functions: funame/arity %
         perimeter/1]).


% area function %

%% first clause %%
area({rectangle, Width, Height})      %% head
    ->
    %% body %%
    Width * Height                    %% expression
    ;                                 %% clause's separator
area({square, Side}) -> Side * Side;                   %% second (and last) clause (terminated by . )
area({circle, Radius}) -> 3.1415 * Radius * Radius;
area({triangle, Base, Height}) -> (Base * Height) / 2.

perimeter({square, Side}) -> 4 * Side;
perimeter({rectangle, Width, Height}) -> (Width + Height) * 2.
