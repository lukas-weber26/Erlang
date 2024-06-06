-module(coroner).
-export([loop/0]).

loop() -> 
	process_flag(trap_exit, true),
	receive
		{monitor,Process} -> 
			link(Process),
			io:format("Monitoriing process ~n"),
			loop();
		{'Exit', From, Reason} -> 
			io:format("The shooter ~p died wit reason ~p", [From, Reason]),
			io:format("Start another one"),
			loop()
		end.

