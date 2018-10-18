select Id, BookingCount as 'BOOKING COUNT' ,AttendanceCount as 'ATTENDANCE COUNT',(AttendanceCount/BookingCount)*100 as 'Attendance percentage'

From  (SELECT JS.Id,count(EventId) as BookingCount,count(BookingId) as AttendanceCount

FROM JobSeekers JS  left join Events_Bookings EB on JS.Id = EB.JobSeekerId 

left join Events_Attendance EA on JS.Id =EA.JobSeekerId

group by JS.Id ,EventId , BookingId ) AttendanceReport; 