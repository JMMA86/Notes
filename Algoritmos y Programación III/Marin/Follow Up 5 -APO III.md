# Matrix
![[Pasted image 20241005191952.png|200]]

**Changes**: After reviewing the algorithm in the slides, the tree was restructured to decide which step the Robot should take to go through all the dust motes and return to the same place.

Previously, the steps were taken based on visual intuition, while now mathematical calculations are taken into account to have a conviction of where to go. The consideration of the infinite heuristic was also changed, since now it only appears if the robot tries to go through a wall, so that it never does so.

# A* Steps

The steps at the beginning have been minimized to understand the calculations roughly, but it is known that the algorithm will consider each possible step individually, in order to advance in the most optimal way. The closed list starts also not empty, but with the start node.

| Open                | Closed                    | g(n) | h(n)                                                     | f(n)          |
| ------------------- | ------------------------- | ---- | -------------------------------------------------------- | ------------- |
| [(1,3)]             | [(1,1)]                   | 2    | $(\|(1-1)\| + \|(3-1)\|) + (\|(3-1)\| + \|(1-1)\|) = 4$  | $2 + 4 = 6$   |
| [(1,3),(3,2)]       | [(1,1)]                   | 3    | $(\|(3-1)\| + \|(2-1)\|) + (\|(2-1)\| + \|(3-1)\|) = 6$  | $3 + 6 = 9$   |
| [(1,3),(3,2),(3,5)] | [(1,1)]                   | 6    | $(\|(3-1)\| + \|(5-1)\|) + (\|(5-1)\| + \|(3-1)\|) = 12$ | $6 + 12 = 18$ |
| [(3,2),(3,5)]       | [(1,1),(1,3)]             |      |                                                          |               |
| [(3,2),(3,5)]       | [(1,1),(1,3)]             | 3    | $(\|(1-3)\| + \|(3-2)\|) + (\|(3-1)\| + \|(2-1)\|) = 6$  | $3 + 6 = 9$   |
| [(3,2),(3,5)]       | [(1,1),(1,3)]             | 4    | $(\|(1-3)\| + \|(3-5)\|) + (\|(3-1)\| + \|(5-1)\|) = 10$ | $4 + 10 = 14$ |
| [(3,5)]             | [(1,1),(1,3),(3,2)]       |      |                                                          |               |
| [(3,5)]             |                           | 5    | $(\|(3-3)\| + \|(2-5)\|) + (\|(3-1)\| + \|(5-1)\|) = 9$  | $5 + 9 = 14$  |
| []                  | [(1,1),(1,3),(3,2),(3,5)] |      |                                                          |               |
| []                  | [(1,1),(1,3),(3,2),(3,5)] | 6    | $(\|(3−1)\|+\|(5−1)\|)+0=6$                              | $6 + 6 = 12$  |

# Search Tree
In the new tree we can see how the cost function is necessary to choose which speck of dust to go to in each option, since this must be the one with the lowest calculated cost.

![[Drawing 2024-10-03 09.55.53.excalidraw|600]]


