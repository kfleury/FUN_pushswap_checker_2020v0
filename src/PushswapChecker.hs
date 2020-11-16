--
-- EPITECH PROJECT, 2020
-- FUN_pushswap_checker_2020
-- File description:
-- PushSwapChecker.hs
--
module PushswapChecker where

import Text.Read
import PushswapFunction


readInt :: [Char] -> Maybe Int
readInt = readMaybe

isSort :: [Int] -> Bool
isSort [] = True
isSort [x] = True
isSort (xa:xs@(xb:_)) = xa <= xb && isSort xs

isOver :: ([Int], [Int]) -> (([Int], [Int]), Bool)
isOver l@(a, []) = (l, isSort a)
isOver l = (l, False)

whichOperation :: String -> (([Int], [Int]) -> ([Int], [Int]))
whichOperation "sa" = sa
whichOperation "sb" = sb
whichOperation "sc" = sc
whichOperation "pa" = pa
whichOperation "pb" = pb
whichOperation "ra" = ra
whichOperation "rb" = rb
whichOperation "rr" = rr
whichOperation "rra" = rra
whichOperation "rrb" = rrb
whichOperation "rrr" = rrr

makeOperation :: [String] -> ([Int], [Int]) -> ([Int], [Int])
makeOperation [] l = l
makeOperation (x:xs) l = makeOperation xs $ whichOperation(x) l

readArgs :: [String] -> Bool
readArgs l = not $ elem Nothing $ fmap (readInt) l

pushswapChecker :: [String] -> [String] -> Either String Bool
pushswapChecker a b = case readArgs a of
                        False -> Left "The arguments must only be digits"
                        _ -> case isOver $ makeOperation b ((fmap (read) a), []) of
                                (_, True) -> Right True
                                (l, _) -> Left $ "KO: " ++ show l
