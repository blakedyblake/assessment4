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