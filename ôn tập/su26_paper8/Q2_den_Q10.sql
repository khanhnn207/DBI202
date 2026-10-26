-- Q2
select ServiceID, ServiceName, Category, UnitPrice, Unit
from Service
where UnitPrice between 10 and 30;

-- Q3
select
b.BookingID,
g.FirstName + ' ' + g.LastName as GuestName,
g.Nationality,
b.BookingDate,
bd.DetailID,
r.RoomNumber
from Booking b
join Guest g on b.GuestID = g.GuestID
join BookingDetail bd on b.BookingID = bd.BookingID
join room r on bd.RoomID = r.RoomID
where year(b.bookingdate) = 2024
and g.Nationality IN ('chinese', 'japanese')
order by b.BookingID, bd.DetailID;

-- Q4
select
g.GuestID,
g.FirstName,
g.LastName,
b.BookingID,
b.BookingDate,
s.ServiceName,
s.Category,
bs.ServiceDate
from Guest g
left join booking b on g.GuestID = b.GuestID
left join BookingService bs on b.BookingID = bs.BookingID
left join service s on bs.ServiceID = s.ServiceID
where g.Nationality = 'japanese'
order by ServiceName asc, BookingDate desc;

-- Q5