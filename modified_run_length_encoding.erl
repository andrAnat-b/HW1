-module(modified_run_length_encoding).
-export([encode_mod/1]).

encode_mod([]) -> [];
encode_mod([X|T]) ->
  encodehlpr(T,X, 1, []).
encodehlpr([],X, 1, Acc) ->
  [X| Acc];
encodehlpr([],X, Count, Acc) ->
  [{Count,X} | Acc];
encodehlpr([X|T],X, Count, Acc) ->
  encodehlpr(T,X, Count + 1, Acc);
encodehlpr([X2 |T],X, Count, Acc) ->  
  case Count of
    1 -> encodehlpr(T, X2, 1, [X| Acc]);
    _ -> encodehlpr(T, X2, 1, [{Count,X} | Acc])
  end. %% спробуйте переписати без кейз-клоз, можна простіше - подумайте
