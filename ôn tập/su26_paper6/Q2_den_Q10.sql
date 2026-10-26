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
join Guest g on b.GuestID = g. GuestID
join BookingDetail bd on b.BookingID = bd.BookingID
join room r on r.RoomID = bd.RoomID
where g.Nationality in ('Chinese', 'Japanese')
order by b.BookingID, bd.DetailID;

-- Q4
select
rt.RoomTypeID,
rt.TypeName,
rt.Description,
r.RoomNumber,
r.Floor,
bd.DetailID,
bg.BookingGuestID,
g.FirstName,
g.LastName,
g.Nationality
from RoomType rt
left join room r on rt.RoomTypeID = r.RoomTypeID
left join BookingDetail bd on r.RoomID = bd.RoomID
left join BookingGuest bg on bd.DetailID = bg.DetailID
left join Guest g on g.GuestID = bg.GuestID AND g.Nationality = 'Japanese' 
where rt.TypeName in ('Standard', 'Suite') 
order by rt.TypeName desc, bd.DetailID desc, bg.BookingGuestID asc;
