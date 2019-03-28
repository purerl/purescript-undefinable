-module(data_undefinable@foreign).
-export([undefined/0, undefinable/0, notUndefined/1]).

undefined() -> undefined.

undefinable() -> 
  fun (Nothing, _Just, undefined) -> Nothing;
      (_Nothing, Just, Value) -> Just(Value)
  end.

notUndefined(X) -> X.