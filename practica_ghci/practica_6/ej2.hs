data TipTree a = Tip a | Join (TipTree a) (TipTree a) deriving Show

heightTip :: TipTree a -> Int
heightTip (Tip a) = 0
heightTip (Join a1 a2) = 1 + heightTip a1 `max` heightTip a2

leaves :: TipTree a -> Int
leaves (Tip a) = 1
leaves (Join a1 a2) = leaves a1 + leaves a2

nodes :: TipTree a -> Int
nodes (Tip a) = 0
nodes (Join a1 a2) = nodes a1 + nodes a2 + 1

walkover :: TipTree a -> [a]
walkover (Tip a) = [a]
walkover (Join a1 a2) = walkover a1 ++ walkover a2

mirrorTip :: TipTree a -> TipTree a
mirrorTip (Tip a) = Tip a
mirrorTip (Join a1 a2) = Join (mirrorTip a2) (mirrorTip a1)

mapTip :: TipTree a -> (a -> b) -> TipTree a
mapTip (Tip a) y = Tip (y a)
mapTip (Join a1 a2) y = Join (mapTip a1 y) (mapTip a2 y)
