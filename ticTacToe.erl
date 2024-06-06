-module(ticTacToe).
-export([check/1]).


check({x,x,x,_,_,_,_,_,_}) -> one ;
check({_,_,_,x,x,x,_,_,_}) -> one ;
check({_,_,_,_,_,_,x,x,x}) -> one ;
check({x,_,_,x,_,_,x,_,_}) -> one ;
check({_,x,_,_,x,_,_,x,_}) -> one ;
check({_,_,x,_,_,x,_,_,x}) -> one ;
check({x,_,_,_,x,_,_,_,x}) -> one ;
check({_,_,x,_,x,_,x,_,_}) -> one ;
check({o,o,o,_,_,_,_,_,_}) -> two ;
check({_,_,_,o,o,o,_,_,_}) -> two ;
check({_,_,_,_,_,_,o,o,o}) -> two ;
check({o,_,_,o,_,_,o,_,_}) -> two ;
check({_,o,_,_,o,_,_,o,_}) -> two ;
check({_,_,o,_,_,o,_,_,o}) -> two ;
check({o,_,_,_,o,_,_,_,o}) -> two ;
check({_,_,o,_,o,_,o,_,_}) -> two ;
check({_,_,_,_,_,_,_,_,_}) -> false.
