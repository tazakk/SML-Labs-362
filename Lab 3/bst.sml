(* Zachary Dehaan *)
(* CS 362 - Lab 3 *)
(* I pledge that all work is my own, original work. *)

(* left subtree, right subtree, key, value *)
datatype BST = Empty | Node of BST * BST * int * int;

(* Inserts a new node into a given BST *)
fun insert (Empty, new_k, new_v) = Node(Empty,Empty,new_k,new_v)
  | insert (Node(l,r,k,v),new_k,new_v) =
        if (new_k = k) then Node(l,r,k,new_v)
        else if (new_k < k) then Node(insert(l,new_k,new_v),r,k,v)
        else Node(l,insert(r,new_k,new_v),k,v);

(* Searches for a node with the given key *)
fun find (Empty,key) = []
  | find (Node(l,r,k,v),key) =
        if k = key then [v]
        else if key < k then find(l,key)
        else find(r,key);

(* Helper for delete *)
fun findMin (Node(Empty,r,k,v)) = (r,k,v)
  | findMin (Node(l,r,k,v)) =
        let
            val (new_l,new_k,new_v) = findMin(l)
        in
            (Node(new_l,r,k,v),new_k,new_v)
        end;

(* Delete the node with the given key *)
fun delete (Empty,key) = Empty
  | delete (Node(l,r,k,v),key) =
        if key < k then Node(delete(l,key),r,k,v)
        else if key > k then Node(l,delete(r,key),k,v)
        else
            case (l,r) of
                 (Empty,_) => r
               | (_,Empty) => l
               | _ => let
                         val (new_r,new_k,new_v) = findMin(r)
                      in
                         Node(l,new_r,new_k,new_v)
                      end;

(* Return a postorder of the given tree *)
fun postorder (Empty) = []
  | postorder (Node(l,r,k,v)) =
        let
            fun children (Empty,Empty) = 0
              | children (_,Empty) = 1
              | children (Empty,_) = 2
              | children _ = 3
        in
            let
                val curr_c = children(l,r)
            in
                postorder(l) @ postorder(r) @ [(curr_c,k,v)]
            end
        end;

(* Trims the given tree such that all the keys in the new tree are
between minKey and maxKey (inclusive). Resulting tree is valid BST. *)
fun subtree (Empty,minKey,maxKey) = Empty
  | subtree (Node(l,r,k,v),minKey,maxKey) =
        if k < minKey then delete(Node(subtree(l,minKey,maxKey),subtree(r,minKey,maxKey),k,v),k)
        else if k > maxKey then delete(Node(subtree(l,minKey,maxKey),subtree(r,minKey,maxKey),k,v),k)
        else Node(subtree(l,minKey,maxKey),subtree(r,minKey,maxKey),k,v);


(* Remainder of code was provided by the Professor for the lab assignment *)

fun parsePost [] = Empty
|   parsePost lst =
    let
        fun pP (stack, (0,k,v)::str) = pP(Node(Empty, Empty, k, v)::stack, str)
        |   pP (L::stack, (1,k,v)::str) = pP(Node(L, Empty, k, v)::stack, str)
        |   pP (R::stack, (2,k,v)::str) = pP(Node(Empty, R, k, v)::stack, str)
        |   pP (R::L::stack, (3,k,v)::str) = pP(Node(L, R, k, v)::stack, str)
        |   pP (T::stack, []) = T;
    in
        pP([],lst)
    end;

val exTree0 = []
val exTree1 = [(0,1,1),(0,3,3),(3,2,2)];
val exTree2 = [(0,2,2),(2,1,1),(0,4,4),(3,3,3),(0,6,6),(1,7,7),(3,5,5)];
val exTree3 = [(0,1,1),(0,4,4),(1,5,5),(3,2,2),(1,8,8),(0,15,15),(2,14,14),(3,11,11)];
