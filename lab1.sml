fun makeLst n =
= if n = 1 then [1]
= else makeLst (n-1) @ [n];

fun removeMult (x, n) =
= if null x then nil
= else if hd x mod n = 0 then removeMult(tl x, n)
= else hd x :: removeMult (tl x, n);

fun sieve x =
= if null x then nil
= else hd x :: sieve (removeMult (tl x, hd x));

fun primes n =
= sieve( tl( makeLst (n)));
