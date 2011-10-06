module Main where

import Test.Framework (defaultMain)

import Data.Global.IORef.Test as I
import Data.Global.TVar.Test as T
import Data.Global.Registry.Test as R

import Data.Global.IORef

main ::  IO ()
main = 
  do
    -- let x = declare "foo"
    -- print $ x == x
    defaultMain
        [ -- R.tests
         I.tests
    --    , T.tests
        ]
