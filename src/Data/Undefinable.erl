-module(data_undefinable).
-export([undefined/0, undefinable/3, notUndefined/1]).

undefined() -> undefined.

undefinable(A, R, _F) when A =:= null -> R;
undefinable(A, _R, F) -> F(A).

notUndefined(X) -> X.