-module(decode_a_run_length_encoded_list).
-export([decode/1]).
decode([]) -> [];
decode([{Count, Elem}|T]) ->
  lists:duplicate(Count, Elem) ++ decode(T).
