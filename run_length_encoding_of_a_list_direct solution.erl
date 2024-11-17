-module('run_length_encoding_of_a_list_direct solution').
-export([encodeDir/1]).
encodeDir([]) -> [];
encodeDir([X|T]) -> encodeDirHelper(T,X, 1, []).

encodeDirHelper([],X, 1, Acc) -> [X| Acc];
encodeDirHelper([],X, Count, Acc) -> [{Count,X} | Acc];
encodeDirHelper([X|T],X, Count, Acc) -> encodeDirHelper(T,X, Count + 1, Acc);
encodeDirHelper([X2| T],X, Count, Acc) ->
  case Count of
    1 -> encodeDirHelper(T,X2, 1, [X| Acc]);
    _ -> encodeDirHelper(T,X2, 1, [{Count,X} | Acc])
  end.

  %% Спробуйте преробити
