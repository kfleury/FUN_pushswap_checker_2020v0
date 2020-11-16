--
-- EPITECH PROJECT, 2020
-- FUN_pushswap_checker_2020
-- File description:
-- UnitTestPushSwapFunction.hs
--
module PushswapFunctionTest where

import Test.HUnit
import PushswapFunction

saTest :: Test
saTest = TestCase (assertEqual name expected out)
  where
    name = "sa Test for ([1..3], [])"
    expected = ([2, 1, 3], [])
    out = sa ([1..3], [])

saTest2 :: Test
saTest2 = TestCase (assertEqual name expected out)
  where
    name = "sa Test for ([], [])"
    expected = ([], [])
    out = sa ([], [])

saTest3 :: Test
saTest3 = TestCase (assertEqual name expected out)
  where
    name = "sa Test for ([1], [])"
    expected = ([1], [])
    out = sa ([1], [])

sbTest :: Test
sbTest = TestCase (assertEqual name expected out)
  where
    name = "sb Test for ([], [1..3])"
    expected = ([], [2, 1, 3])
    out = sb ([], [1..3])

sbTest2 :: Test
sbTest2 = TestCase (assertEqual name expected out)
  where
    name = "sb Test for ([], [])"
    expected = ([], [])
    out = sb ([], [])

sbTest3 :: Test
sbTest3 = TestCase (assertEqual name expected out)
  where
    name = "sb Test for ([], [1])"
    expected = ([], [1])
    out = sb ([], [1])

scTest :: Test
scTest = TestCase (assertEqual name expected out)
  where
    name = "sc Test for ([1..3], [1..3])"
    expected = ([2, 1, 3], [2, 1, 3])
    out = sc ([1..3], [1..3])

scTest2 :: Test
scTest2 = TestCase (assertEqual name expected out)
  where
    name = "sc Test for ([], [])"
    expected = ([], [])
    out = sc ([], [])

scTest3 :: Test
scTest3 = TestCase (assertEqual name expected out)
  where
    name = "sc Test for ([1], [1])"
    expected = ([1], [1])
    out = sc ([1], [1])

paTest :: Test
paTest = TestCase (assertEqual name expected out)
  where
    name = "pa Test for ([1..3], [1..3])"
    expected = ([1, 1, 2, 3], [2..3])
    out = pa ([1..3], [1..3])

paTest2 :: Test
paTest2 = TestCase (assertEqual name expected out)
  where
    name = "pa Test for ([], [])"
    expected = ([], [])
    out = pa ([], [])

pbTest :: Test
pbTest = TestCase (assertEqual name expected out)
  where
    name = "pb Test for ([1..3], [1..3])"
    expected = ([2..3], [1, 1, 2, 3])
    out = pb ([1..3], [1..3])

pbTest2 :: Test
pbTest2 = TestCase (assertEqual name expected out)
  where
    name = "pb Test for ([], [])"
    expected = ([], [])
    out = pb ([], [])

raTest :: Test
raTest = TestCase (assertEqual name expected out)
  where
    name = "ra Test for ([1..3], [])"
    expected = ([2, 3, 1], [])
    out = ra ([1..3], [])

raTest2 :: Test
raTest2 = TestCase (assertEqual name expected out)
  where
    name = "ra Test for ([], [])"
    expected = ([], [])
    out = ra ([], [])

rbTest :: Test
rbTest = TestCase (assertEqual name expected out)
  where
    name = "rb Test for ([], [1..3])"
    expected = ([], [2, 3, 1])
    out = rb ([], [1..3])

rbTest2 :: Test
rbTest2 = TestCase (assertEqual name expected out)
  where
    name = "rb Test for ([], [])"
    expected = ([], [])
    out = rb ([], [])

rrTest :: Test
rrTest = TestCase (assertEqual name expected out)
  where
    name = "rr Test for ([1..3], [1..3])"
    expected = ([2, 3, 1], [2, 3, 1])
    out = rr ([1..3], [1..3])

rrTest2 :: Test
rrTest2 = TestCase (assertEqual name expected out)
  where
    name = "rr Test for ([], [])"
    expected = ([], [])
    out = rr ([], [])

rraTest :: Test
rraTest = TestCase (assertEqual name expected out)
  where
    name = "rra Test for ([1..3], [])"
    expected = ([3, 1, 2], [])
    out = rra ([1..3], [])

rraTest2 :: Test
rraTest2 = TestCase (assertEqual name expected out)
  where
    name = "rra Test for ([], [])"
    expected = ([], [])
    out = rra ([], [])

rrbTest :: Test
rrbTest = TestCase (assertEqual name expected out)
  where
    name = "rrb Test for ([], [1..3])"
    expected = ([], [3, 1, 2])
    out = rrb ([], [1..3])

rrbTest2 :: Test
rrbTest2 = TestCase (assertEqual name expected out)
  where
    name = "rrb Test for ([], [1..3])"
    expected = ([], [3, 1, 2])
    out = rrb ([], [1..3])

rrrTest :: Test
rrrTest = TestCase (assertEqual name expected out)
  where
    name = "rrr Test for ([1..3], [1..3])"
    expected = ([3, 1, 2], [3, 1, 2])
    out = rrr ([1..3], [1..3])

rrrTest2 :: Test
rrrTest2 = TestCase (assertEqual name expected out)
  where
    name = "rrr Test for ([], [])"
    expected = ([], [])
    out = rrr ([], [])

testsPushSwapFunction = TestList [saTest, saTest2, saTest3, sbTest, sbTest2, sbTest3,
                                  scTest, scTest2, scTest3, paTest, paTest2, pbTest,
                                  pbTest2, raTest, raTest2, rbTest, rbTest2, rrTest,
                                  rrTest2, rraTest, rraTest2, rrbTest, rrbTest2, rrrTest,
                                  rrrTest2]
