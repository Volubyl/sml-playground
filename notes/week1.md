# WEEK 1

## Checking loop

### 1. Syntax

Check if the keyword used are correct (if, then, else, ...)

### 2. Type-Checking

Check the type of the provided expressions. Check if the expression have the same type.

### 3. Evaluation Rules

First evaluate

## Shadowing

Shadowing is when a expression value is assigned again to another value

## Howework

## Number of month algo

Params :

- list of date. `// A date is a tuple like (2019,5,22)`
- a month number `// "5" means "May"`

```
NUMBER_IN_MONTH (dateList, monthNumber)
    IF datelist IS EMPTY
    THEN
        RETURN 0
    ELSE
      IF MONTH's FIRST ITEM of the datelist EQUALS monthNumber
        RETURN  1 + NUMBER_IN_MONTH (dateList without the first item, 0 )
      ELSE
         RETURN  0 +  NUMBER_IN_MONTH(dateList without the first item, 0 )
```

INPUTS :

- NUMBER_IN_MONTH : [(2019, 02 , 22), (2019, 03, 15)]
- monthNumber : 5

|                              CODE                               | CallStack                                    |
| :-------------------------------------------------------------: | -------------------------------------------- |
|                                                                 |                                              |
|                      IF datelist IS EMPTY                       | DateList = [(2019, 02 , 22), (2019, 03, 15)] |
|                                                                 | monthNumber = 5                              |
|                              ELSE                               | DateList = [(2019, 02 , 22), (2019, 03, 15)] |
|                                                                 | monthNumber = 5                              |
|    IF MONTH's FIRST ITEM of the datelist EQUALS monthNumber     | DateList = [(2019, 02 , 22), (2019, 03, 15)] |
|                                                                 | monthNumber = 5                              |
| RETURN 0 + NUMBER_IN_MONTH(dateList without the first item, 0 ) | DateList = [(2019, 02 , 22), (2019, 03, 15)] |
|                                                                 | monthNumber = 5                              |
|                                                                 | value_to_return = 0                          |
|                                                                 |                                              |
|                      IF datelist IS EMPTY                       | DateList = [(2019, 03, 15)]                  |
|                                                                 | monthNumber = 5                              |
|                                                                 | value_to_return = 0                          |
|                              ELSE                               | DateList = [(2019, 03, 15)]                  |
|                                                                 | monthNumber = 5                              |
|                                                                 | value_to_return = 0                          |
|                                                                 |                                              |
|    IF MONTH's FIRST ITEM of the datelist EQUALS monthNumber     | DateList = [ (2019, 03, 15)]                 |
|                                                                 | monthNumber = 5                              |
| RETURN 1 + NUMBER_IN_MONTH(dateList without the first item, 0 ) | DateList = [(2019, 03, 15)]                  |
|                                                                 | monthNumber = 5                              |
|                                                                 | value_to_return = 1                          |
|                                                                 |                                              |
|                      IF datelist IS EMPTY                       | DateList = []                                |
|                                                                 | monthNumber = 5                              |
|                                                                 | value_to_return = 0                          |
|                            RETURN 0                             | DateList = []                                |
|                                                                 | monthNumber = 5                              |
|                                                                 | value_to_return = 0                          |
