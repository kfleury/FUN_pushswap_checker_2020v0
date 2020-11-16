--
-- EPITECH PROJECT, 2020
-- FUN_pushswap_checker_2020
-- File description:
-- PushSwapFunction.hs
--
module PushswapFunction where

type Operation = ([Int], [Int]) -> ([Int], [Int])

fb :: Operation -> ([Int], [Int]) -> ([Int], [Int])
fb f (a, b) = (a', b')
  where (b', a') = f (b, a)

sa :: Operation
sa ([], b) = ([], b)
sa ([x], b) = ([x], b)
sa ((xa:xb:xs), b) = (xb:xa:xs, b)

sb :: Operation
sb l = fb sa l

sc :: Operation
sc l = sa $ sb l

pa :: Operation
pa (a, []) = (a, [])
pa (a, (x:xs)) = (x:a, xs)

pb :: Operation
pb l = fb pa l

ra :: Operation
ra ([], b) = ([], b)
ra ((x:xs), b) = (xs ++ [x], b)

rb :: Operation
rb l = fb ra l

rr :: Operation
rr l = ra $ rb l

rra :: Operation
rra ([], b) = ([], b)
rra (a, b) = ((last a):(init a), b)

rrb :: Operation
rrb l = fb rra l

rrr :: Operation
rrr l = rra $ rrb l
