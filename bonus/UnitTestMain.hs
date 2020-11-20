--
-- EPITECH PROJECT, 2020
-- FUN_pushswap_checker_2020
-- File description:
-- UnitTestMain.hs
--
import Test.HUnit
import PushswapTest
import PushswapFunctionTest

main :: IO Counts
main = (putStrLn $ "\n\x1b[92;1m" ++ "PushSwap Function" ++ "\x1b[0m") >>
       runTestTT testsPushSwapFunction >>
       (putStrLn $ "\n\x1b[92;1m" ++ "PushSwap" ++ "\x1b[0m") >>
       runTestTT testsPushSwap
