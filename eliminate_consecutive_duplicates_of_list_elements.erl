-module(eliminate_consecutive_duplicates_of_list_elements).
-export([compress/1]).
compress([]) -> [];
compress([X|T]) ->
  compress(T, X, []).
compress([], _, Acc) ->
  lists:reverse(Acc);
compress([X|T], Prev, Acc) when X == Prev -> %% зайвий охоронний вира- спробуйте без
  compress(T,Prev,Acc);
compress([X|T], Prev, Acc) ->
  compress(T,X, [Prev | Acc]).
