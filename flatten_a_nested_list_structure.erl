-module(flatten_a_nested_list_structure).
-export([flatten/1]).
flatten([]) -> [];
flatten([X|T]) when is_list(X) ->
  flatten(X) ++ flatten(T);
flatten([X|T]) ->
  [X| flatten(T)].
