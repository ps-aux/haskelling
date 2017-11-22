module Types where

import Data.List
import Data.Maybe


data Point = Point Float Float deriving (Show)

data Shape = Circle Point Float | Square Point Float  deriving (Show)


data Person = Person { name:: String, age :: Int} deriving (Show)


names =  [("Alice", 23),
         ("Bob", 32),
         ("Charlie", 44),
         ("Daniel", 28)]
userDb = zip [1..] $ map (\x -> Person (fst x) (snd x)) names


withId :: (Eq i) => i -> (i, b) -> Bool
withId id = (==) id . fst



type Id = Int
type IdMap v = [(Id, v)]


findInList :: (Eq a ) => [a] -> a -> a
findInList xs a = fromJust $ find ((==) a) xs

findInDict :: IdMap b -> Id -> (Id, b)
findInDict d id = fromJust $ find (withId id) d

type PersonDb = IdMap Person

findPerson :: PersonDb -> Id -> Person
findPerson db id = snd $ findInDict db id


foo i = findPerson userDb 2

area :: Shape -> Float
area (Square _ s) =  s * s
area (Circle _ r) =  pi * r * r



