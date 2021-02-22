# SML-labs
Repository for my CS 362 SML labs.

## Lab 1
Lab required three functions:
- `makeLst(n)` of type `int -> int list`
- `removeMult(lst, n)` of type `int list * int -> int list`
- `primes(n)` of type `int -> int list`

Additional function(s) added:
- `sieve(lst)` of type `int list -> int list`

`makeLst`: Takes as input a positive integer `n` and returns the list `[1,2,3,...,n]`.\
`removeMult`: Removes all multiples of a given integer from the list.\
`primes`: Outputs all prime number that are smaller than or equal to a given integer `n` using the Sieve of Eratosthenes algorithm.\
`sieve`: Helper function for `primes` that runs the Sieve of Eratosthenes.\

All functions can be found in `/Lab 1/lab1.sml`.

## Lab 2

Lab required Quicksort in SML using the following functions:
- `last(lst)` of type `'a list -> 'a`
- `middle(lst)` of type `'a list -> 'a`
- `median(a, b, c)` of type `int * int * int -> int`
- `partition(lst, p)` of type `int list * int -> int list * int list`
- `quicksort(lst)` of type `int list -> int list`

Additional function(s) added:
- `monotone(lst)` of type `int list -> bool`

`last`: Returns the last element of a given list.\
`middle`: Returns the middle element of a given list.\
`median`: Returns the median of the three given elements.\
`partition`: Partitions the given list into a list of elements that are less than or equal to `p` and a list of elements that are greater than `p`.\
`quicksort`: Sorts a list.\
`monotone`: Returns true if all number in the list are the same.\

All functions can be found in `/Lab 2/lab2.sml`.

## Lab 3

Lab required implementing a Binary Search Tree (BST) and its operations with the following functions:
- `insert(bst, key, value)` of type `BST * int * int -> BST`
- `find(bst, key)` of type `BST * int -> int list`
- `delete(bst, key)` of type `BST * int -> BST`
- `postorder(bst)` of type `BST -> (int * int * int) list`
- `subtree(bst, minKey, maxKey)` of type `BST * int * int -> BST`

Additional function(s) added:
- `findMin(bst)` of type `BST -> BST * int * int`

`insert`: Inserts a key-value pair into a given tree and returns the resulting tree. (Note: each key is unique, so inserting an existing key will overwrite the value in the corresponding node).\
`find`: Searches for a node with the given key and returns a list containing the corresponding value if the node exists, or an empty list otherwise.\
`delete`: Deleted the node with the given key from the given tree and returns the resulting tree; if no node exists, it returns the unchanged tree.\
`postorder`: Returns a postorder of the given tree.\
`subtree`: Trims the given tree such that all the keys in the new tree are between minKey and maxKey (inclusive) and returns a valid BST.\
`findMin`: Finds the minimum value in the left subtree of a given node and replaces the current node with its values while maintaining a valid BST structure.\

All functions can be found in `/Lab 3/bst.sml`.
