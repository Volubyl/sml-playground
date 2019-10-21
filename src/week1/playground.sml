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

fun sum_list (xs : int list ) =
        if null xs
        then 0
        else hd xs + sum_list(tl xs)

val sum = sum_list([88,88,88,88])


fun mul_list (xs : int list ) =
        if null xs
        then 1
        else hd xs * mul_list(tl xs)

val mul = mul_list([5,4])

fun countDown (step : int) =
        if step = 0
        then []
        else step :: countDown(step -1)

val result = countDown(88);

fun append (list1 : int list , list2 : int list) =
    if null list1 
    then list2
    else hd list1 :: append( tl list1, list2)

val resultAppend = append([888,9999], [888]);

(*Let Expression*)

fun funny (z : int) =
    let 
        val foo = (let val y = 83 
                in 
                    if y > z 
                    then y 
                    else z 
                end)
                
    in 
        foo + 83
    end

val a = funny(83);
