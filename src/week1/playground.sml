(*This is a function*)

fun foo(x: int, y: int) :int = if(x > y) 
    then  x 
    else  y;

(*This is how we could use it*)

val result = foo (66,55)

val values = (55,55)
val result2 = foo values;
