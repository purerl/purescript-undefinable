-module(data_undefinable@foreign).
-export([undefined/0, undefinable/0, notUndefined/1]).

undefined() -> undefined.

undefinable() -> fun (A, R, _F) when A =:= undefined -> R;
                     (A, _R, F) -> F(A)
                 end.

notUndefined(X) -> X.