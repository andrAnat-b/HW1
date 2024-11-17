-module(find_the_number_of_elements_of_a_list).
-export([list_length/1]).

list_length([]) -> 0;
list_length([_]) -> 1;
list_length([_X|T]) -> %% спробуйте преробити на хвостову рекурсію.
  1 + list_length(T).
