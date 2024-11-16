-module(find_the_last_box_of_a_list).
-export([last/1]).
last([X]) ->
  X;
last([_|T]) ->
  last(T).
