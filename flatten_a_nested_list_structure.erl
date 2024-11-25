-module(flatten_a_nested_list_structure).
-export([flatten/1]).
flatten([]) -> [];
flatten([X|T]) when is_list(X) ->
  flatten(X) ++ flatten(T); %% спробуйте переробити на хвостову рекурсію. 
flatten([X|T]) ->
  [X| flatten(T)]. %% спробуйте переробити на хвостову рекурсію. 

  %% в цілому не далеко від "еталону"
