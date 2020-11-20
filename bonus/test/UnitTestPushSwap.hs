--
-- EPITECH PROJECT, 2020
-- FUN_pushswap_checker_2020
-- File description:
-- UnitTestSwapChecker.hs
--
module PushswapTest where

import Test.HUnit
import Pushswap

isSortTest :: Test
isSortTest = TestCase (assertEqual name expected out)
  where
    name = "isSort Test for [1..5]"
    expected = True
    out = isSort [1..5]

readIntTest :: Test
readIntTest = TestCase (assertEqual name expected out)
  where
    name = "readInt Test for \"a\""
    expected = Nothing
    out = readInt "a"

readIntTest2 :: Test
readIntTest2 = TestCase (assertEqual name expected out)
  where
    name = "readInt Test for \"1\""
    expected = Just 1
    out = readInt "1"

isSortTest2 :: Test
isSortTest2 = TestCase (assertEqual name expected out)
  where
    name = "isSort Test for [1, 5, 3]"
    expected = False
    out = isSort [1, 5, 3]

readArgsTest :: Test
readArgsTest = TestCase (assertEqual name expected out)
  where
    name = "readArgs Test for [\"1\", \"2\", \"3\"]"
    expected = True
    out = readArgs ["1", "2", "3"]

readArgsTest2 :: Test
readArgsTest2 = TestCase (assertEqual name expected out)
  where
    name = "readArgs Test for [\"1\", \"2\", \"3\"]"
    expected = False
    out = readArgs ["1", "a", "3"]

toBinTest :: Test
toBinTest = TestCase (assertEqual name expected out)
  where
    name = "toBin Test for 1"
    expected = [0, 1]
    out = toBin 1

toBinTest2 :: Test
toBinTest2 = TestCase (assertEqual name expected out)
  where
    name = "toBin Test for 5"
    expected = [0, 1, 0, 1]
    out = toBin 5

toBinTest3 :: Test
toBinTest3 = TestCase (assertEqual name expected out)
  where
    name = "toBin Test for -5"
    expected = [0, -1, 0, -1]
    out = toBin (-5)

toBinTest4 :: Test
toBinTest4 = TestCase (assertEqual name expected out)
  where
    name = "toBin Test for 22"
    expected = [0, 1, 0, 1, 1, 0]
    out = toBin 22

testsPushSwap = TestList [isSortTest, isSortTest2, readIntTest, readIntTest2,
                          readArgsTest, readArgsTest2, toBinTest, toBinTest2,
                          toBinTest3, toBinTest4]
