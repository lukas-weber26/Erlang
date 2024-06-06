-module(kv).
-export([kv/1]).

kv([]) -> [];
kv([H | T ]) -> {_,Value} = H, [Value | kv(T)].
