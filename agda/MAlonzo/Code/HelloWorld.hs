{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.HelloWorld where
import MAlonzo.RTE (coe, erased)
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified Data.Text
name2 = "HelloWorld.Unit"
d2 = ()

check4 :: ()
check4 = ()

cover2 :: () -> ()
cover2 x
  = case x of
        () -> ()
name4 = "HelloWorld.Unit.unit"

d4 :: ()
d4 = ()
name6 = "HelloWorld.String"
d6
  = error
      "MAlonzo Runtime Error: postulate evaluated: HelloWorld.String"
name8 = "HelloWorld.IO"
d8
  = error "MAlonzo Runtime Error: postulate evaluated: HelloWorld.IO"
name10 = "HelloWorld.putStr"

d10 :: (Data.Text.Text -> (IO ()))
d10 = Data.Text.IO.putStr
main = d12
name12 = "HelloWorld.main"
d12 = coe d10 (coe Data.Text.pack "Hello, World!")