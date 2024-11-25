-module(pack_consecutive_duplicates_of_list_elements_into_sublists).
-export([pack/1]).
pack([]) -> [];
pack([X|T]) ->
  pack(T, [X], []).
pack([], Current, Acc) ->
  lists:reverse([Current | Acc]);
pack([X|T], [X| Current], Acc) ->
  pack(T, [X| Current], Acc);
pack([X|T], Current, Acc) ->
  pack(T, [X], [lists:reverse(Current) | Acc]). %% навіщо тут реверс?
