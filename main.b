*Jacob Lee
*10/25/2017

    PROMPT ""
    xcoord=2
    ycoord=2


    LOOP
        CRT@(-1)
        GOSUB PAINTMENU
        INPUT@(xcoord+20,ycoord+0):menu,1
        menu=UPCASE(menu)
        PRINT@(xcoord+20,ycoord+0):menu
    UNTIL menu="X" DO
        BEGIN CASE
        CASE menu=1
            GOSUB MANAGER
        CASE 1
        END CASE
    REPEAT
    RETURN

PAINTMENU:
    PRINT@(xcoord,ycoord+0):"Select an option: "
    PRINT@(xcoord,ycoord+1):"1) Manager Login: "
    PRINT@(xcoord,ycoord+2):"X) Exit: "
    RETURN

MANAGER:
    empID=""
    pass=""
    dept="" 
    PRINT@(xcoord,ycoord+10):"Manager Login"
    
    PRINT@(xcoord,ycoord+11):"Employee ID: "
    INPUT@(xcoord+20,ycoord+11):empID,7
    empID=empID'R%7'
    PRINT@(xcoord+20,ycoord+11):empID
    
    PRINT@(xcoord,ycoord+12):"Department: "
    INPUT@(xcoord+20,ycoord+12):dept,2 
    dept=dept'R%2'
    PRINT@(xcoord+20,ycoord+12):dept
    
    PRINT@(xcoord,ycoord+13):"Password: ":
    INPUT@(xcoord+20,ycoord+13):pass,20
    
    CALL LOGIN(empID,dept,pass)
    RETURN 
