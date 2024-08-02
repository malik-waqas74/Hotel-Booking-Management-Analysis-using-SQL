use hotel_booking_system 

select top 5 * from bookings_hotel


-- Count the Total Bookings by hotels
SELECT count(hotel)as City_Hotel_Bookings from bookings_hotel where hotel='City Hotel'

SELECT count(hotel) as Resort_Hotel_Bookings from bookings_hotel where hotel='Resort Hotel'

--Count bookings with cancelation on hotel based
SELECT count(is_canceled) as Cancelled_in_Resrot_Hotel from bookings_hotel
where is_canceled='1' and hotel='Resort Hotel'
SELECT count(is_canceled) as Cancelled_in_City_Hotel from bookings_hotel
where is_canceled='1' and hotel='City Hotel'

---Count the Canceled bookings with members
--> Couples
SELECT count(adults) as Couples from bookings_hotel
where adults=2 and children=0 and babies=0 

SELECT count(is_canceled) as Canceled_Bookings from bookings_hotel
where adults=2 and children=0 and babies=0 and is_canceled='1'

--> Singles
SELECT count(adults) as Couples from bookings_hotel
where adults=1 and children=0 and babies=0 

SELECT count(is_canceled) as Canceled_Bookings from bookings_hotel
where adults=1 and children=0 and babies=0 and is_canceled='1'


--> Family

SELECT count(adults) as Family_Guests from bookings_hotel
where (adults<1 or adults>2) or children>0
or babies>0

SELECT count(is_canceled) as Canceled_Bookings from bookings_hotel
where ((adults<1 or adults>2) or (children>0
or babies>0 ))and is_canceled='1'

--Count Room reservations and cancelations
--desired rooms
select count(assigned_room_type) as Desired_Room from bookings_hotel
where assigned_room_type=reserved_room_type

select count(is_canceled) as Desired_Room_Canceled from bookings_hotel
where assigned_room_type=reserved_room_type and is_canceled='1'

-- un desired rooms
select count(assigned_room_type) as Non_Desired_Room from bookings_hotel
where assigned_room_type!=reserved_room_type

select count(is_canceled) as Non_Desired_Room_Canceled from bookings_hotel
where assigned_room_type!=reserved_room_type and is_canceled='1'


--Bookings and Canceled_Bookings on each month

SELECT COUNT(adults) from bookings_hotel
where arrival_date_month='January'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month='January' and is_canceled='1'


SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'Feb%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'Feb%' and is_canceled='1'

SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'Mar%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'Mar%' and is_canceled='1'

SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'Ap%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'Ap%' and is_canceled='1'


SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'May%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'May%' and is_canceled='1'

SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'June%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'June%' and is_canceled='1'


SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'Jul%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'Jul%' and is_canceled='1'


SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'Aug%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'Aug%' and is_canceled='1'


SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'Sep%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'Sep%' and is_canceled='1'


SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'Oct%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'Oct%' and is_canceled='1'

SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'Nov%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'Nov%' and is_canceled='1'


SELECT COUNT(adults) from bookings_hotel
where  arrival_date_month like 'Dec%'
SELECT COUNT(is_canceled) from bookings_hotel
where arrival_date_month like 'Dec%' and is_canceled='1'

