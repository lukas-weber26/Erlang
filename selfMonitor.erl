-module(doctor).
-export([loop/0]).

loop() -> 
	process_flag(trap_exit,true),
	receive
		new -> 
			io:format("Creating and monitoring process. ~n"),
			register(revolver, spawn_link(fun))
