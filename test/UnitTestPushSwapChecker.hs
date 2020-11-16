--
-- EPITECH PROJECT, 2020
-- FUN_pushswap_checker_2020
-- File description:
-- UnitTestSwapChecker.hs
--
module PushswapCheckerTest where

import Test.HUnit
import PushswapChecker

isSortTest :: Test
isSortTest = TestCase (assertEqual name expected out)
  where
    name = "isSort Test for [1..5]"
    expected = True
    out = isSort [1..5]

isSortTest2 :: Test
isSortTest2 = TestCase (assertEqual name expected out)
  where
    name = "isSort Test for [1, 5, 3]"
    expected = False
    out = isSort [1, 5, 3]

isOverTest :: Test
isOverTest = TestCase (assertEqual name expected out)
  where
    name = "isOver Test for ([1..5], [])"
    expected = (([1..5], []), True)
    out = isOver ([1..5], [])

isOverTest2 :: Test
isOverTest2 = TestCase (assertEqual name expected out)
  where
    name = "isOver Test for ([1..5], [1..5])"
    expected = (([1..5], [1..5]), False)
    out = isOver ([1..5], [1..5])

makeOperationTest :: Test
makeOperationTest = TestCase (assertEqual name expected out)
  where
    name = "makeOperation Test for [\"sa\", \"sa\"] ([1..5], [])"
    expected = ([1..5], [])
    out = makeOperation ["sa", "sa"] ([1..5], [])

makeOperationTest2 :: Test
makeOperationTest2 = TestCase (assertEqual name expected out)
  where
    name = "makeOperation Test for [] ([1..5], [])"
    expected = ([1..5], [])
    out = makeOperation [] ([1..5], [])

pushswapCheckerTest :: Test
pushswapCheckerTest = TestCase (assertEqual name expected out)
  where
    name = "pushswapChecker Test for [\"sa\", \"sa\"] (\"1\", \"5\", \"3\", \"4\", \"2\")"
    expected = Left $ "KO: ([6,5,8],[3,2,1])"
    out = pushswapChecker ["2", "1", "3", "6", "5", "8"] ["sa", "pb", "pb", "pb"]

pushswapCheckerTest2 :: Test
pushswapCheckerTest2 = TestCase (assertEqual name expected out)
  where
    name = "pushswapChecker Test for [\"sa\", \"sa\"] (\"1\", \"5\", \"3\", \"4\", \"2\")"
    expected = Right True
    out = pushswapChecker ["2", "1", "3", "6", "5", "8"] ["sa", "pb", "pb", "pb", "sa", "pa", "pa", "pa"]

testsPushSwapChecker = TestList [isSortTest, isSortTest2, isOverTest, isOverTest2,
                                 makeOperationTest, makeOperationTest2, pushswapCheckerTest,
                                 pushswapCheckerTest2]
