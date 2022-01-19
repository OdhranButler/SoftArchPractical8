*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA text, A1    ;Loads text into A1
    MOVE #14, D0    ;moves #14 to D0 for trap
    TRAP #15        ;uses trap task 14 to display text
    MOVE #4, D0     ;moves #4 to d0 for trap
    TRAP #15        ;uses trap task 4 to take input from keyboard and store it in D2
    MOVE D1, $2000  ;stores the gamer score entered into memory location 2000
    MOVE #3, D0     ;moves #3 to D0 for trap
    TRAP #15        ;uses trap task 3 to display gamer score stored in D1 on screen

    SIMHALT             ; halt simulator

* Put variables and constants here
text dc.b 'Please enter your gamer points here: ',0

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
