*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    MOVE #21, D0            ;changing d0 for task number 21
    MOVE.L #$00FFC0CB, D1   ;changing d1 to RGB value in hex
    MOVE.L #$1010, D2       ;changing d2 to 1010 in binary for format
    TRAP #15                ;applying color/format changes
    
    LEA text, A1            ;loading question to A1
    MOVE #14, D0            ;preparing task number 14
    TRAP #15                ;displaying text to screen
    MOVE #2, D0             ;changing d0 for task number 2
    TRAP #15                ;getting keyboard input (max 80)
    MOVE.l (A1),$10          ;MOVING name from address to memory
    
    
    
    LEA text2, A1           ;loading question two to A1
    MOVE #14, D0            ;preparing for task number 14
    TRAP #15                ;executing task 14
    MOVE #5,D0              ;preparing for task number 5
    TRAP #15                ;executing task 5
    MOVE D1, $20            ;storing answer in memory
    
    MOVE #0, D0
    TRAP #15
    

    LEA text3, A1           ;putting text into a1
    MOVE #14, D0            ;preparing trap task number
    TRAP #15                ;displaying informative text
    MOVE #8, D0             ;preparing trap task number
    TRAP #15                ;returning time in hundreths of seconds since midnight
    MOVE #3, D0             ;preparing trap number
    TRAP #15                ;displaying number
    
   
    LEA text4, A1           
    MOVE #0, D0
    TRAP #15
    MOVE #2, D0
    TRAP #15
    LEA text5, A1
    MOVE #13, D0
    TRAP #15
    

    
    SIMHALT             ; halt simulator

* Put variables and constants here
text dc.b 'please enter your intials: ',0
text2 dc.b 'are you male(M) or female(F): ' ,0
text3 dc.b 'this is how many seconds has passed since midnight:' ,0
text4 dc.b 'enter your favorite color:' ,0
text5 dc.b 'that color sucks!' ,0
    END    START        ; last line of source





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
