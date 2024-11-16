-module(replicate_the_elements_of_a_list_a_given_number_of_times).
-export([replicate/2]).
replicate([], _) -> [];
replicate([X| T], N) -> lists:duplicate(N,X) ++ repli(T, N).
