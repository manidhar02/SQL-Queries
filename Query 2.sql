select B.JOBSEEKERID, A.ATTENDED from ((Events_Bookings as B inner join 

Events as E on ENTITYID = EVENTID )  INNER JOIN Events_Attendance as A  on 

B.JOBSEEKERID = A.JOBSEEKERID) where CONVERT(datetime, SWITCHOFFSET(E.Start, DATEPART(TZOFFSET, 
    
    Start AT TIME ZONE 'E. Australia Standard Time'))) >= '2015-12-12T11:00:00.000' AND 
        
    Start <= '2015-12-24T18:00:00.000' ;
	