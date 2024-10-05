## Introduction (Section 6.1)
- Even with the horn clauses, the space complexity is really big

**Terminology for new algorithms**:
- Being in state $s$, an action $a_{1}$ leads to a new state $s'$.
- $s' = a_{1}(s)$
- A different action may lead to state $s''$
- $s'' = a_{2}(s)$
Recursive application of all possible actions to all states, beginning with the starting state, yields the search tree.

> **Definition 6.1** A search problem is defined by the following values 
> **State:** Description of the state of the world in which the search agent finds itself. 
> **Starting state:** The initial state in which the search agent is started. 
> **Goal state:** If the agent reaches a goal state, then it terminates and outputs a solution (if desired). 
> **Actions:** All of the agents allowed actions. 
> **Solution:** The path in the search tree from the starting state to the goal state. 
> **Cost function:** Assigns a cost value to every action. Necessary for finding a cost-optimal solution. 
> **State space:** Set of all states.

> **Definition 6.2** 
> The number of successor states of a state s is called the branching factor b(s), or b if the branching factor is constant.
> The effective branching factor of a tree of depth d with n total nodes is defined as the branching factor that a tree with constant branching factor, equal depth, and equal n would have (see Exercise 6.3 on page 122). 
> A search algorithm is called complete if it finds a solution for every solvable problem. If a complete search algorithm terminates without finding a solution, then the problem is unsolvable.

The branch factor can be given by this formula:
$$
n = \frac{b^{d+1} - 1 }{b - 1}
$$
We can also stipulate that, as we are working with a tree, we can have:
$$
n = \sum_{i=0}^{d}b^i = \frac{b^{d + 1} - 1}{b - 1}
$$

> **Theorem 6.1** For heavily branching finite search trees with a large constant branching factor, almost all nodes are on the last level.

> **Definition 6.3** A search algorithm is called optimal if it, if a solution exists, always finds the solution with the lowest cost.

*problem is **deterministic**, which means that every action leads from a state to a unique successor state. It is furthermore **observable**, that is, the agent always knows which state it is in.*

## Uninformed search (Section 6.2)

### Breadth First Search

The BFS is used to explore all the possibilities.

```
BREADTHFIRSTSEARCH(NodeList, Goal)

NewNodes H = 0; 
For all Node in NodeList 
	If GoalReached(Node, Goal) 
		Return(“Solution found”, Node) 
	NewNodes H Append(NewNodes, Successors(Node)) 

If NewNodes != 0
	Return(BREADTH-FIRST-SEARCH(NewNodes, Goal)) 
Else 
	Return(“No solution”)
```

The **BFS** makes a search finite as it will travel all the nodes until it reaches the very end of all the branches, thus we can say that no node has a better or worse weight, so we can calculate the result as follows:
$$
c \cdot \sum_{i=0}^{d}b^i = \frac{b^{d + 1} - 1}{b - 1} = O(b^d)
$$

Even thought we chop the last level, the worse case in memory is still $O(b^d)$.

### Depth First Search

The DFS is also used to explore all the possibilities, it is easier to implement, but it suffers from the high cost of the depth.

```
DEPTHFIRSTSEARCH(Node, Goal) 

If GoalReached(Node, Goal) Return(“Solution found”) 

NewNodes D Successors(Node) 

While NewNodes != 0
	Result = DEPTH-FIRST-SEARCH(First(NewNodes), Goal) 
	If Result = “Solution found” Return(“Solution found”)
	NewNodes = Rest(NewNodes) 

Return(“No solution”)
```

### Iterative deepening

For a basic implementation of the DFS, we can apply a depth limit to try to optimize it forcefully, but this can cause to our algorithm to be incomplete as the algorithm will try to find a solution in the same deep level of the graph.

To avoid the above problem, we can just increase the deepness level when we exhaust one level.

```
ITERATIVEDEEPENING(Node, Goal) 

DepthLimit = 0 

Repeat 
	Result = DEPTHFIRSTSEARCH-B(Node, Goal, 0, DepthLimit) 
	DepthLimit = DepthLimit + 1 
Until Result = “Solution found”
```

```
DEPTHFIRSTSEARCH-B(Node, Goal, Depth, Limit) 

If GoalReached(Node, Goal) Return(“Solution found”) 
	NewNodes = Successors(Node) 
	While NewNodes And Depth < Limit 
		Result = 
			DEPTHFIRSTSEARCH-B(First(NewNodes), Goal, Depth + 1, Limit) 
		If Result = “Solution found” Return(“Solution found”) 
		NewNodes = Rest(NewNodes) Return(“No solution”)
```

We cannot avoid the results of the last level as they can interfere with the new level to find a new solution.

One can show that starting from this:
$$
N_{b}(d_{max}) = \frac{1}{b-1}N_{b}(d_{max})
$$
But I'm not writing that lot of things.

### Comparison

The best is the iterative deepening. But is not enough, even with the 15-puzzle there's no computer on earth that can handle the search space.

### Cycle check

One can store visited states so we don't have to recalculate them.

## Heuristic Search (Section 6.3)

Is using rules or the best ideas to reach a goal, we will always going to use these rules to manage the algorithm, think of this like a spoiled child who only obeys his parents.
```
HEURISTICSEARCH(Start, Goal) 

NodeList = [Start] 

While True 
	If NodeList == 0
		Return(“No solution”) 
	Node = First(NodeList) 
	NodeList = Rest(NodeList) 
	If GoalReached(Node, Goal) 
		Return(“Solution found”, Node) 
	NodeList = SortIn(Successors(Node),NodeList)
```

The best heuristic function is the one that calculates the costs for all the nodes, but as we know, this is impractical, so what we do is take the problem and simplify it to the limit where it is easily computable, with this, we can find our heuristics, however, this is not the only method to get an heuristic.

### Greedy search

Here we try to always get the smallest or the biggest (depending on the case) cost for our heuristics. They are easy to implement, but can never lead us to a valid solution or the best solution.

### A* Search

Here we want to accumulate the costs until the actual node, then we add an estimated cost that is required to reach the goal. The function will look to something like this:
$$
f(s) = g(s) + h(s)
$$

Where $g(s)$ is the total accumulated costs, and $h(s)$ is the estimated cost to the goal.

> **Definition 6.4** A heuristic cost estimate function $h(s)$ that never overestimates the actual cost from state $s$ to the goal is called admissible.

> **Theorem 6.2** The $A^*$ algorithm is optimal. That is, it always finds the solution with the lowest total cost if the heuristic $h$ is admissible.

Formally the algorithm gets a new step such that its sum with the new estimation is lower than the actual estimation, it is true even if a $l$ solution node is find, because $A^*$ will give a smaller cost $l'$ always, more formally :

$g(l) = g(l) + h(l) = f(l) \le f(s) = g(s) + h(s) \le g(l')$

If we are computing an heuristic for a map app, we can find that landmarks always gets the best routes, so it is a good rule to follow in a map.

### IDA* Search

> The A★ search inherits a quirk from breadth-first search. It has to save many nodes in memory, which can lead to very high memory use. Furthermore, the list of open nodes must be sorted. Thus insertion of nodes into the list and removal of nodes from the list can no longer run in constant time, which increases the algorithm’s complexity slightly. Based on the heapsort algorithm, we can structure the node list as a heap with logarithmic time complexity for insertion and removal of nodes. Both problems can be solved—similarly to breadth-first search—by iterative deepening. We work with depth-first search and successively raise the limit. However, rather than working with a depth limit, here we use a limit for the heuristic evaluation $f (s)$. This process is called the IDA★-algorithm.

