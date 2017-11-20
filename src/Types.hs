module Types where


data Point = Point Float Float deriving (Show)

data Shape = Circle Point Float | Square Point Float  deriving (Show)


area :: Shape -> Float
area (Square _ s) =  s * s
area (Circle _ r) =  pi * r * r



