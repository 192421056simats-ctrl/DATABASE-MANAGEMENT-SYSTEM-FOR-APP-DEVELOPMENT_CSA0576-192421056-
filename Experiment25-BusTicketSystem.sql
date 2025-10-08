-- Experiment25-BusTicketSystem.sql
USE dbms_lab;

CREATE TABLE bus (
  bus_id INT PRIMARY KEY AUTO_INCREMENT,
  route VARCHAR(100),
  total_seats INT
);

CREATE TABLE bus_schedule (
  bs_id INT PRIMARY KEY AUTO_INCREMENT,
  bus_id INT,
  depart_time DATETIME,
  fare DECIMAL(7,2),
  FOREIGN KEY(bus_id) REFERENCES bus(bus_id)
);

CREATE TABLE bus_ticket (
  bt_id INT PRIMARY KEY AUTO_INCREMENT,
  bs_id INT,
  passenger VARCHAR(100),
  seat_no INT,
  qr_code VARCHAR(255), -- store a simple token or QR payload
  FOREIGN KEY(bs_id) REFERENCES bus_schedule(bs_id)
);

-- Example: create bus and schedule and book
INSERT INTO bus(route,total_seats) VALUES ('A->B',40);
INSERT INTO bus_schedule(bus_id,depart_time,fare) VALUES (1,'2025-11-01 09:00:00',199.00);
INSERT INTO bus_ticket(bs_id,passenger,seat_no,qr_code) VALUES (1,'Alex',1, 'QR123TOKEN');
