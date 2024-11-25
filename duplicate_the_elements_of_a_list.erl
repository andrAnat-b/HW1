-module(duplicate_the_elements_of_a_list).
-export([duplicate/1]).
duplicate([]) -> [];
duplicate([X|T]) -> [X,X| duplicate(T)]. %% спробуйте переробити на хвостову рекурсію.
