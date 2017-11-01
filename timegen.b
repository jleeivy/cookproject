*Jacob Lee
*11/1/2017

*R.TIMESHEET<1>= employee ID
*R.TIMESHEET<2>= date
*R.TIMESHEET<3>= timemark

    CRT@(-1)

    R.TIMESHEET=""
    Key=0

    GOSUB RECORDID

    RETURN

RECORDID:
    FOR empID=1 TO 50
        empID=empID'R%7'
        OPEN 'employees' TO F.EMPLOYEES ELSE
            ABORT 201, 'employees'
        END
        READ R.EMPLOYEES FROM F.EMPLOYEES,empID ELSE
            R.EMPLOYEES=''
        END
        start=R.EMPLOYEES<4,1>
        stop=R.EMPLOYEES<4,2>
        CLOSE F.EMPLOYEES
        GOSUB RECORDDATE
    NEXT empID
    RETURN

RECORDDATE:
    FOR day=18172 TO 18185 
        GOSUB NEWRECORD
    NEXT day
    RETURN

NEWRECORD:
    OPEN 'timesheet' TO F.TIMESHEET ELSE
        ABORT 201, 'TIMESHEET'
    END

    Key=Key+1
    Key=Key'R%7'
    R.TIMESHEET<1>=empID
    R.TIMESHEET<2>=day
    R.TIMESHEET<3,1>=start-900+RND(1800)
    R.TIMESHEET<3,2>=stop-900+RND(1800)+30600

    WRITE R.TIMESHEET TO F.TIMESHEET,Key
    CLOSE F.TIMESHEET
    RETURN

