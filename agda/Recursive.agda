module Recursive where

--open import Enumerated using (Bool; true; false)

{-
Peano rep.
0 ~ zero
1 ~ suc (zero)

n+1 ~ suc n
-}

{-# IMPORT Data.Text.IO #-}

data Unit : Set where
  unit : Unit

{-# COMPILED_DATA Unit () () #-}

postulate
  String : Set

{-# BUILTIN STRING String #-}

postulate
  IO : Set → Set

{-# BUILTIN IO IO #-}
{-# COMPILED_TYPE IO IO #-}

postulate
  putStr : String → IO Unit

{-# COMPILED putStr Data.Text.IO.putStr #-}

main : IO Unit
main = putStr "Hello, World!"

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ


