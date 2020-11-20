--
-- EPITECH PROJECT, 2020
-- FUN_pushswap_checker_2020
-- File description:
-- Pushswap.hs
--
module Pushswap where

import Text.Read

isSort :: [Int] -> Bool
isSort [] = True
isSort [x] = True
isSort (xa:xs@(xb:_)) = xa <= xb && isSort xs

readInt :: [Char] -> Maybe Int
readInt = readMaybe

readArgs :: [String] -> Bool
readArgs l = not $ elem Nothing $ fmap (readInt) l

toBin :: Int -> [Int]
toBin 0 = [0]
toBin n = toBin (n `quot` 2) ++ [n `rem` 2]

radix :: ([Int], [Int]) -> String
radix (a, b) = "oui"

pushswap :: [String] -> Either String String
pushswap l = case readArgs l of
                False -> Left "The arguments must only be digits"
                _ -> Right $ radix ((fmap (read) l), [])
