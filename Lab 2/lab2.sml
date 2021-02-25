(* I pledge that all work is my own. *)
(* Zachary Dehaan - Lab 2: CS 362 - 01/24/21 *)

(* get last element in a list *)
fun last([a]) = a
  | last(lst) = last(tl lst);

(* helper for middle *)
fun divvy(first,second) =
  if null(tl second) orelse null(tl(tl(second))) then hd first
  else divvy(tl first, tl(tl(second)));

(* get middle element in list *)
fun middle([a]) = a
  | middle(lst) = divvy(lst,lst);

(* get the median of three elements *)
fun median(a,b,c) =
  if((a <= b andalso b <= c) orelse (c <= b andalso b <= a)) then b
  else if((b <= a andalso a <= c) orelse (c <= a andalso a <= b)) then a
  else c;

(* partitions a list into two lists *)
fun partition(nil, p) = (nil, nil)
  | partition([a],p) =
      if a <= p then ([a],nil) 
      else (nil,[a])
  | partition(a::bs,p) =
      let 
        val (x,y) = partition(bs,p)
      in (
        if a <= p then (a::x,y)
        else (x,a::y)
      ) end;

(* run quicksort *)
fun quicksort([]) = nil 
  | quicksort([a]) = [a]
  | quicksort(a::b) =
      let
        val (smaller,larger) = partition(b,a)
      in (
        quicksort(smaller) @ [a] @ quicksort(larger)
      ) end;
