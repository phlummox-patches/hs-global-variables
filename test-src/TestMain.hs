module Main where

import Test.Framework (defaultMain)

-- import Data.Global.IORef.Test as I
-- import Data.Global.TVar.Test as T
import Data.Global.Registry
import Data.Global.Registry.Test as R

main ::  IO ()
main = do
    -- let x = declareIORef "foo" (1 :: Int) 
    -- print $ x == x
    defaultMain $
    	[ R.tests
        -- , I.tests
        -- , T.tests
    	]
