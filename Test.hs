import Control.Monad
import Control.Concurrent
import Data.Global.Registry
import System.Exit

main = do
    -- let x = declareIORef "bar" (0 :: Int)
    -- print $ x == x
    putStrLn "run"
    forM [1..100] $ \_ -> forkIO $ do
        x <- return $ declareIORef "foo" (1 :: Int)
        y <- return $ declareIORef "foo" (1 :: Int)
        x <- return $ declareMVar "foo" (1 :: Int)
        y <- return $ declareMVar "foo" (1 :: Int)
        if x == y
            then return ()
            else exitWith (ExitFailure 255)

