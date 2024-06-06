-module(message).
-export([err/1]).

err({error}) -> io:format("Error s");
err({success}) -> io:format("Success").


