
fun is_older(date1 :int*int*int, date2 : int*int*int) =
     #1 date1 < #1 date2 orelse #2 date1 < #2 date2 orelse #3 date1 < #3 date2
 
fun number_in_month (dateList : (int*int*int) list , monthNumber: int) :int  =
      if null dateList
      then 0
      else 
           if #2 (hd dateList) = monthNumber
           then 
                1 + number_in_month(tl dateList, monthNumber)
           else 
               number_in_month(tl dateList, monthNumber)     


fun number_in_months (dateList : (int*int*int) list , monthNumbers: int list) :int  =
     if null monthNumbers
     then 0
     else
          number_in_month(dateList, hd monthNumbers) + number_in_months( dateList, tl monthNumbers) 
   

fun dates_in_month(dateList : (int*int*int) list, monthNumber: int) : (int*int*int) list = 
     if null dateList
     then []
     else 
          if #2 (hd dateList) = monthNumber
          then 
               hd dateList :: dates_in_month(tl dateList, monthNumber)
          else 
               dates_in_month(tl dateList, monthNumber)

fun dates_in_months(dateList : (int*int*int) list, monthNumbers: int list) : (int*int*int) list = 
     if null monthNumbers
     then []
     else 
          dates_in_month(dateList, hd monthNumbers) @ dates_in_months(dateList, tl monthNumbers)

fun get_nth(stringList : string list, index : int) : string =
     if index <= 1 
     then hd stringList
     else 
          get_nth(tl stringList, index-1)
    
fun date_to_string(date : int*int*int) :string =
   let 
        val months = [ "January", "February", "March", "April","May", "June", "July", "August", "September", "October", "November", "December"]               
    in 
          get_nth(months, #2 date)^" "^ Int.toString(#3 date) ^", "^ Int.toString(#1 date)
    end

fun oldest (dateList : (int*int*int) list) =
    if null dateList
    then NONE
    else
          let
           val tail_oldest = oldest(tl dateList);
          in
            if isSome tail_oldest andalso is_older(valOf tail_oldest, hd dateList)
               then tail_oldest
               else
                   SOME(hd dateList)
          end

fun get_treshold_index(current_sum : int, index: int, sum:int, numberList: int list ):int = 
    if null numberList
    then  0
    else if current_sum + hd numberList >= sum
    then index
    else get_treshold_index(current_sum + hd numberList, index +1, sum, tl numberList)


fun  number_before_reaching_sum (sum:int, list: int list) : int
     let
          val get_treshold_index = fun (current_sum : int, index: int, numberList: int list ):int = 
               if null numberList
               then  0
               else if current_sum + hd numberList >= sum
               then index
               else get_treshold_index(current_sum + hd numberList, index +1, sum, tl numberList)
     in
          get_treshold_index(0,0,list)
     end
