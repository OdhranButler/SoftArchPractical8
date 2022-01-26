*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    
    MOVE #100, $10
    LEA health, A2  ;Loads health into A2
    MOVE (A2), D1     ;Loads A2 into D1
    ADD #5, D1      ;Adds 5 to D1    
    SUB #5, D1      ;Subtracts 5 from d1
    MULU #2, D1     ;Multiplies D1 by 2
    DIVU #2, D1     ;Divides D1 by 2
    MOVE D1, A2     ;Replaces A2 with new health
    MOVE A2, $10    ;Replaces $10 with new health value
    
    SIMHALT             ; halt simulator

* Put variables and constants here

health dc.b $10

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
