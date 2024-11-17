-module(reverse).
-export([reverse/1]).

reverse([]) -> []; %% зайва клоза
reverse(List) ->
  reverse(List, []).
reverse([X|T], Y) ->
  reverse(T, [X|Y]);
reverse([], Y) -> Y.