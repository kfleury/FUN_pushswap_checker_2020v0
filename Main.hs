--
-- EPITECH PROJECT, 2020
-- FUN_pushswap_checker_2020
-- File description:
-- Main.hs
--
import PushswapChecker
import System.Environment
import System.Exit(exitWith, ExitCode(ExitFailure))

main :: IO ()
main = getArgs >>= (\av -> getLine >>= (\op -> case pushswapChecker av (words op) of
                                                      (Right _) -> putStrLn "OK"
                                                      (Left str) -> putStrLn str >>
                                                                (exitWith $ ExitFailure 84)))
