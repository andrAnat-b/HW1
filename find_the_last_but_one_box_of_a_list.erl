-module(find_the_last_but_one_box_of_a_list).
-export([butLast/1]).

butLast([X,Y]) ->
  [X,Y];
butLast([_ | X]) ->
  butLast(X);
butLast([_]) ->
  error.