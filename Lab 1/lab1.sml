(* Creates a list [1,2,3,...,n] *)
fun makeLst n =
  if n = 1 then [1]
  else makeLst (n-1) @ [n];

(* Removes the multiples of n from a list *)
fun removeMult (x, n) =
  if null x then nil
  else if hd x mod n = 0 then removeMult(tl x, n)
  else hd x :: removeMult (tl x, n);

(* Runs the Sieve of Eratosthenes *)
fun sieve x =
  if null x then nil
  else hd x :: sieve (removeMult (tl x, hd x));

(* Calls the Sieve of Eratosthenes on a list of numbers 2 to n *)
fun primes n = sieve( tl( makeLst (n)));
