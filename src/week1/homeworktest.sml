use "./homework.sml";




(*is_older*)


val is_older_test1 = is_older((1985,11,16),(1985,11,16)) = false
val is_older_test2 = is_older((1985,11,16),(1985,11,15)) = false
val is_older_test3 = is_older((1985,11,16),(1985,11,17)) = true
val is_older_test4 = is_older((1985,11,16),(1985,10,16)) = false
val is_older_test5 = is_older((1985,11,16),(1985,12,16)) = true
val is_older_test6 = is_older((1985,11,16),(1984,11,16)) = false
val is_older_test7 = is_older((1985,11,16),(1986,11,16)) = true


(*number_in_month*)

val dateList = [(2019, 03, 05), (2019, 05, 05), (1988, 05, 05) ]

val test5 = number_in_month(dateList, 5) = 2;

val emptyDateList = [];

val test6 = number_in_month(emptyDateList,5) = 0

val dateList = [(2019, 03, 05), (2019, 05, 05), (1988, 05, 05) ]

val test7 = number_in_month(dateList, 12) = 0;

(*number_in_months*)

val dateList = [(2019, 03, 05), (2019, 05, 05), (1988, 05, 05) ]

val test8 = number_in_months(dateList, []) = 0;

val test9 = number_in_months(dateList, [5]) = 2;

val test10 = number_in_months(dateList, [5, 3]) = 3;


val dateList = []

val test11 = number_in_months(dateList, []) = 0;
val test12 = number_in_months(dateList, [5,3]) = 0;

(*dates_in_month*)

val dateList = [(2019, 03, 05), (2019, 05, 05), (1988, 05, 05) ]

val test12 = dates_in_month(dateList, 3) = [(2019, 03, 05)]
val test13 = dates_in_month(dateList, 5) = [(2019, 05, 05), (1988, 05, 05) ]

val dateList = []
val test14 = dates_in_month(dateList, 3) = []
val test15 = dates_in_month(dateList, 5) = []

(*dates_in_months*)

val dateList = [(2019, 03, 05), (2019, 05, 05), (1988, 05, 05) ]
val test16 = dates_in_months(dateList, [5]) = [(2019, 05, 05), (1988, 05, 05) ]
val test17 = dates_in_months(dateList, [3]) = [(2019, 03, 05)]
val test18 = dates_in_months(dateList, [3,5]) = [(2019, 03, 05), (2019, 05, 05), (1988, 05, 05) ]
val test19 = dates_in_months(dateList, [8]) = []
val test20 = dates_in_months(dateList, []) = []
val test21 = dates_in_months([], []) = []
val test22 = dates_in_months([], [3]) = []

(*get_nth*)

val strings = ["foo", "bar", "baz"];

val test23 = get_nth(strings, 2) = "bar";
val test24 = get_nth(strings, 0) = "foo";
val test25 = get_nth(strings, 3) = "baz";

(*date_to_string*)

val test27 = date_to_string((1945,06,26)) = "June 26, 1945"
val test28 = date_to_string((1988,06,26)) = "June 26, 1988"

(*oldest*)


val test30 = oldest([(2000,31,04), (2012,10,05)]) = SOME((2000,31,04))



