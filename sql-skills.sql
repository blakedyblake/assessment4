INSERT INTO artist(name) VALUES 
('Mikey'),
('Takemeitchy'),
('Draken');

SELECT * FROM artist  order by name LIMIT 5;


SELECT first_name,last_name FROM employee WHERE city = 'Calgary';
--Employee
SELECT * FROM employee WHERE reports_to = 2;
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';
--Invoice
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

SELECT MIN(total) FROM invoice;
SELECT MAX(total) FROM invoice;

SELECT * FROM invoice WHere total > 5;
SELECT * FROM invoice WHere total < 5;
SELECT SUM(total) FROM invoice;

--Join
SELECT * FROM invoice WHERE invoice_id IN(
    SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99
);

SELECT invoice_date,customer.first_name, customer.last_name, total FROM invoice
JOIN customer ON invoice.customer_id = customer.customer_id;

SELECT customer.first_name "Customer Fistname", customer.last_name"Customer last name" , employee.first_name "Rep first", employee.last_name "Rep last" FROM customer
JOIN employee ON customer.support_rep_id = employee.employee_id;

SELECT album.title, artist.name FROM album JOIN artist ON artist.artist_id =album.artist_id;


--Extra credit
SELECT * FROM artist  order by name desc LIMIT 10;
SELECT * FROM artist  WHERE name like 'Black%';
SELECT * FROM artist  WHERE name like '%Black%';

SELECT MAX(birth_date) FROM employee;
SELECT MIN(birth_date) FROM employee;

SELECT COUNT(*) FROM invoice WHERE billing_state IN('CA', 'TX', 'AZ');
SELECT AVG(total) FROM invoice;


--JOIN
SELECT playlist_track.track_id FROM playlist_track 
JOIN playlist ON playlist.playlist_id = playlist_track.playlist_id
WHERE playlist.name = 'Music';

SELECT track.name FROM TRACK
JOIN playlist_track ON playlist_track.track_id = track.track_id
JOIN playlist ON playlist_track.playlist_id = playlist.playlist_id
WHERE playlist.playlist_id = 5;

SELECT track.name "Song", playlist.name "Playlist" FROM track
JOIN playlist_track ON playlist_track.track_id = track.track_id
JOIN playlist ON playlist_track.playlist_id = playlist.playlist_id;

SELECT track.name "Song", album.title "Album" FROM track
JOIN album ON track.album_id = album.album_id
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name IN('Alternative', 'Punk');



