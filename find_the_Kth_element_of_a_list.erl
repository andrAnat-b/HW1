-module(find_the_Kth_element_of_a_list).
-export([kth_element/2]).

kth_element([X|_T],1) ->
  X;
kth_element([_X|T],K) ->
  kth_element(T,K - 1).