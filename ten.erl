-module(ten).
-export([toTen/1]).

toTen(0) -> [];
toTen(N) -> [N | toTen(N-1)].
