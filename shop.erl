-module(shop).
-export([shop/1]).

shop([]) -> [];
shop(List) -> [{Item,Quantity*Price} || {Item,Quantity,Price} <- List] .
