# SML-labs
Repository for my CS 362 SML labs.

# Lab 1
Three functions:
- `makeLst` of type `int -> int list`
- `removeMult` of type `int list * int -> int list`
- `primes` of type `int -> int list`

`makeLst`: Takes as input a positive integer `n` and returns the list `[1,2,3,...,n]`.\
`removeMult`: Removes all multiples of a given integer from the list.\
`primes`: Outputs all prime number that are smaller than or equal to a given integer `n` using the Sieve of Eratosthenes algorithm.\
All functions can be found in `/src/Lab1/lab1.sml`.

# Lab 2

Quicksort in SML using the following functions:
- `last` of type `'a list -> 'a`
- `middle` of type `'a list -> 'a`
- `median` of type `int * int * int -> int`
- `partition` of type `int list * int -> int list * int list`
- `quicksort` of type `int list -> int list`

`last`: Returns the last element of a given list.\
 `middle`: Returns the middle element of a given list.\
 `median`: Returns the median of the three given elements.\
 `partition`: Partitions the given list into a list of elements that are less than or equal to `p` and a list of elements that are greater than `p`.\
 `quicksort`: Sorts a list.\
 All functions can be found in `/src/Lab2/lab2.sml`.
