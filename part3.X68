*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    MOVE #22, D0
    MOVE.L #16761035, D1
    MOVE.B #0101, D2
    TRAP #15
    LEA text, A1        ;loading question to A1
    MOVE #14, D0        ;preparing task number
    TRAP #15            ;displaying text to screen
    MOVE #2, D0         ;changing d0 for task number
    TRAP #15            ;getting keyboard input (max 80)
    MOVE D1, $10        ;storing name value
    
    
    
    
    SIMHALT             ; halt simulator

* Put variables and constants here
text dc.b 'please enter your name: ',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
