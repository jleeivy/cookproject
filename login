*Jacob Lee
*10/25/2017
*V0.0

    SUBROUTINE LOGIN(empID,dept,pass)
    i=0

    query=''
    query:="SELECT MANAGERS WITH 1="
    query:=empID
    EXECUTE query

    query=''
    query:="SELECT MANAGERS WITH 2="
    query:=dept
    EXECUTE query

    OPEN 'managers' TO F.MANAGERS ELSE
        ABORT 201, 'managers'
    END

    LOOP WHILE READNEXT ID DO
        READ R.MANAGERS FROM F.MANAGERS,ID ELSE
            R.MANAGERS=''
        END
    REPEAT
    CLOSE F.MANAGERS
    CRT@(-1)

    IF pass=R.MANAGERS<3> THEN
        PRINT "LOGIN SUCCESSFUL"
        MSLEEP(1500)
        CALL MANAGETIME(dept)
    END ELSE
        PRINT "LOGIN FAILED":
        MSLEEP(1500)
    END
    RETURN 

