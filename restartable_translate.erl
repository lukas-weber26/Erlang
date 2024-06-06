-module(restartable_translate).
-export([loop/0]).

loop() ->
	process_flag(trap_exit,true),
	receive
		new ->
			io:format("Create and monitor process. ~n"),
			register(revolver, spawn_link(fun translate:loop/0)),
			loop();
		{'EXIT', From, Reason} -> 
			io:format("The shooter ~p died with reason ~p", [From,Reason]),
			io:format("Restarting ~n"),
			self() ! new,
			loop()
		end.
