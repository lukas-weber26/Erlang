-module(selfHeal).
-export([loop/0]).

loop () -> 
	process_flag(trap)
