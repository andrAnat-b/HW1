-module(palindrome).
-export([palindromeCheck/1]).
palindromeCheck([]) ->
  true;
palindromeCheck([_]) ->
  true;
palindromeCheck(List) when is_list(List) ->
  List == reverse:reverse(List).
%% складно - і ще і охоронний вираз. Спробуйте переробити