module Dihedral.Hex 
( Vertex(..)
, Hex(..)
, inihex
, flipA
, flipB
, flipC
, flipD
, flipE
, flipF
, rot0
, rot60
, rot120
, rot180
, rot240
, rot300
, hexprint
) where

data Vertex = A | B | C | D | E | F deriving Show
data Hex = Hex Vertex Vertex Vertex Vertex Vertex Vertex

inihex :: Hex
inihex = Hex A B C D E F

flipA (Hex x y z w v u) = Hex u v w z y x
flipB (Hex x y z w v u) = Hex v w z y x u
flipC (Hex x y z w v u) = Hex w z y x u v
flipD (Hex x y z w v u) = Hex z y x u v w
flipE (Hex x y z w v u) = Hex y x u v w z
flipF (Hex x y z w v u) = Hex x u v w z y

rot0 hex = hex
rot60 (Hex x y z w v u) = Hex u x y z w v
rot120 = rot60 . rot60
rot180 = rot120 . rot60
rot240 = rot180 . rot60
rot300 = rot240 . rot60

hexprint (Hex x y z w v u) = "[" ++ show x ++ show y ++ show z ++ show w ++ show v ++ show u ++ "]"

instance Show Hex where
	show = hexprint
