-module(run_length_encoding_of_a_list).
-export([encode/1]).

encode([]) -> [];
encode([X|T]) -> encodehlpr(T,X, 1, []).
encodehlpr([],X, Count, Acc) -> [{Count,X} | Acc];
encodehlpr([X|T],X, Count, Acc) -> encodehlpr(T,X, Count + 1, Acc);
encodehlpr([X2|T],X, Count, Acc) -> encodehlpr(T,X2, 1, [{Count,X} | Acc]).
