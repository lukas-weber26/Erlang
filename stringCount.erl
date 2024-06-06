-module(stringCount).
-export([count/1]).

count([S]) -> case S of 32 -> 1; _ -> 0 end;
count([Head|Tail]) -> case Head of 32 -> 1+count(Tail); _ -> count(Tail) end.
