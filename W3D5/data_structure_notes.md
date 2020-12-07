# Data Structures

## What data Structures could we use to implement ADTs(Abstract Data Type)?

- List :
- Dictionary : Hash, Array, or String

# Stacks Overview
Sequential collection of objects. All operatiosn take place at one end(LIFO).

properties:
- push: add elemeent to top of stack
- pop: remove and return element from top
- peek: remove top without removing it
- size:
- empty: return true or false depending if it is empty

`private` restricts access to the data so that nobody but the developer can mess with it.

`def inspect` lets you overwrite the functionality to only see the object_id.

# Queue Overview
Sequential collection of objects. Removal at one end, insertion at the other(FIFO).

properties:
- enqueue(el): add element to the back
- dequeue: remove and return element from front
- show: show the entire queue(but don't return it!)
- size: return the current size of the queue
- empty? :return true or false depending on whether or not queue is empty.

# Node Overview
It is the basic unit comprising a tree. Node typically holds a value and reference to its children. The root node _is_ the tree.

Nodes that have children are called internal.

children are leaves.

Algorithm: General approach and process to problem solving operations.

Function/Method: Concrete implementation, in a specific language, of an algorithm.

#DFS (Depth First Search)
Recursiion:
1. Check if node is the target and return if it is.
2. Iterate over the node's children.
  - call DFS on a child and memoize the result.
  - if the result is not nil, return the node we found.
3. `nil`

#BFS (Bottom First Search)
1. Create a queue with the root node inside
2. Until the queue is empty:
 - dequeue the node
 - check the node and return if matches target
 - add children to the queue
3. return nil
