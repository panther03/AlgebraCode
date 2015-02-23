module Dihedral.Tri 
( Vertex(..)
, Tri(..)
, initri
, flipA
, flipB
, flipC
, rot0
, rot120
, rot240
, triprint
, trigroup
) where		

data Vertex = One | Two | Three deriving Show
data Tri = Tri Vertex Vertex Vertex

-- Initialize Tri

initri :: Tri
initri = Tri One Two Three

-- Flip symmetries

flipA :: Tri -> Tri
flipA = flipB . flipC . flipB
flipB :: Tri -> Tri
flipB (Tri a b c) = Tri c b a
flipC :: Tri -> Tri 
flipC (Tri a b c) = Tri b a c

-- Identity

rot0 :: Tri -> Tri
rot0 = id

-- Rotations

rot120 :: Tri -> Tri
rot120 (Tri a b c) = Tri c a b

rot240 :: Tri -> Tri
rot240 = rot120 . rot120

triprint (Tri a b c) = "[" ++ show a ++ " " ++ show b ++ " " ++ show c ++ "]"

instance Show Tri where
	show = triprint

trigroup = [flipA, flipB, flipC, rot0, rot120, rot240]
