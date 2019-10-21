(*This is a function*)

fun foo(x: int, y: int) :int = if(x > y) 
    then  x 
    else  y;

(*This is how we could use it*)

val result = foo (66,55)

val values = (55,55)
val result2 = foo values;

(*Tuples*)

val tuple = (12, false);

fun swap (pair : int*bool) =  
    (#2 pair, #1 pair)


(*List*)

val list = [1111, 222, 3333];
val upgradedList = 222::list  (*Will add 222 to the current list*)
val foo = null list (* null list Evaluate if the list is empty or not ---> here foo = false *)
val firstElement = hd list; (*HEAD -- returns the first item of a list*)
val lastElements = tl list; (*TAIL returns the items after the head*)
