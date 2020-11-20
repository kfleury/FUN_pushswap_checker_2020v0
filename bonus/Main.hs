--
-- EPITECH PROJECT, 2020
-- FUN_pushswap_checker_2020
-- File description:
-- Main.hs
--
import Pushswap
import System.Environment
import System.Exit(exitWith, ExitCode(ExitFailure))

main :: IO ()
main = getArgs >>= (\av -> case pushswap av of
                                (Right str) -> putStrLn str
                                (Left str) -> putStrLn str >> (exitWith $ ExitFailure 84))
