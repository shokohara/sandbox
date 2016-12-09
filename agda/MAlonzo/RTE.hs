module MAlonzo.RTE where

import Unsafe.Coerce
import GHC.Prim

-- Special version of coerce that plays well with rules.
{-# INLINE [1] coe #-}
coe = unsafeCoerce
{-# RULES "coerce-id" forall (x :: a) . coe x = x #-}

-- Builtin QNames.
data QName = QName { nameId, moduleId :: Integer, qnameString :: String}

instance Eq QName where
  QName a b _ == QName c d _ = (a, b) == (c, d)

instance Ord QName where
  compare (QName a b _) (QName c d _) = compare (a, b) (c, d)

erased :: a
erased = coe (\ _ -> erased)

mazIncompleteMatch :: String -> a
mazIncompleteMatch s = error ("Agda: incomplete pattern matching: " ++ s)

mazUnreachableError :: a
mazUnreachableError = error ("Agda: unreachable code reached.")

