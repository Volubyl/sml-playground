use "./homework.sml";




(*is_older*)

val date1 = (1905, 03, 25);
val date2 = (2019, 12,25);

val test1 = is_older(date1, date2) = true

val date1 = (2019, 03, 25);
val date2 = (2019, 12,25);

val test2 = is_older(date1, date2) = true

val date1 = (2019, 03, 03);
val date2 = (2019, 03,25);

val test3 = is_older(date1, date2) = true

val date1 = (2019, 03, 25);
val date2 = (2019, 03,25);

val test3 = is_older(date1, date2) = false


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
