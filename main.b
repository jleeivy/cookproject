*Jacob Lee
*10/25/2017
*11/08/2017

    PROMPT ""
    xcoord=2
    ycoord=2


    LOOP
        CRT@(-1)
        GOSUB PAINTMENU
        INPUT@(xcoord+25,ycoord+5):menu,1
        menu=UPCASE(menu)
        PRINT@(xcoord+25,ycoord+5):menu
    UNTIL menu="X" DO
        BEGIN CASE
        CASE menu=1 
            GOSUB MANAGER
        CASE menu=2
            GOSUB PUNCHIN
        CASE 1
        END CASE
    REPEAT
    RETURN

PAINTMENU:
    PRINT@(xcoord,ycoord+0):TIMEDATE()
    PRINT@(xcoord,ycoord+5):"Select an option: "
    PRINT@(xcoord,ycoord+6):"1) Manager Login: "
    PRINT@(xcoord,ycoord+7):"2) Punch in/out "
    PRINT@(xcoord,ycoord+8):"X) Exit: "
    RETURN

MANAGER:
    empID=""
    pass=""
    dept="" 
    PRINT@(xcoord,ycoord+10):"Manager Login"
    
    PRINT@(xcoord,ycoord+11):"Enter your employee ID: "
    INPUT@(xcoord+25,ycoord+11):empID,7
    empID=empID'R%7'
    PRINT@(xcoord+25,ycoord+11):empID
    
    PRINT@(xcoord,ycoord+12):"Enter your department: "
    INPUT@(xcoord+25,ycoord+12):dept,2
    dept=dept'R%2'
    PRINT@(xcoord+25,ycoord+12):dept
    
    PRINT@(xcoord,ycoord+13):"Enter your password: ":
    INPUT@(xcoord+25,ycoord+13):pass,20
    
    CALL LOGIN(empID,dept,pass)
    RETURN

PUNCHIN: 
    PRINT@(xcoord,ycoord+11):"Enter your employee ID: "
    INPUT empID,7
    empID=empID'R%7'
    PRINT "CLOCKIN GOES HERE"
    RETURN
