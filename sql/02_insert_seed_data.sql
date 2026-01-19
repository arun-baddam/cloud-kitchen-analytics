/* ===============================
   Cloud Kitchen Analytics
   Seed Data Inserts
   =============================== */

-- Locations
INSERT INTO Locations (LocationName)
VALUES
('Bedford'),
('Milton Keynes'),
('Luton');

-- Channels
INSERT INTO Channels (ChannelName)
VALUES
('Uber Eats'),
('Deliveroo'),
('Just Eat'),
('Direct Website/App');

-- Menu Items (10)
INSERT INTO Menu_Items (ItemName, Category, PrepTimeMinutes, IsActive)
VALUES
('Chicken Biryani', 'Main Course', 18, 1),
('Veg Biryani', 'Main Course', 16, 1),
('Butter Chicken', 'Main Course', 20, 1),
('Paneer Butter Masala', 'Main Course', 18, 1),
('Garlic Naan', 'Breads', 6, 1),
('Jeera Rice', 'Rice', 8, 1),
('Chicken 65', 'Starters', 12, 1),
('Veg Manchurian', 'Starters', 14, 1),
('Gulab Jamun', 'Dessert', 5, 1),
('Masala Coke', 'Beverages', 2, 1);

-- Customers (15)
INSERT INTO Customers (CustomerName, FirstOrderDate)
VALUES
('Aarav Shah','2025-11-05'),
('Isha Patel','2025-11-12'),
('Noah Brown','2025-11-20'),
('Olivia Jones','2025-11-25'),
('Kabir Singh','2025-12-01'),
('Meera Nair','2025-12-06'),
('Ethan Smith','2025-12-10'),
('Sofia Khan','2025-12-14'),
('Arjun Rao','2025-12-18'),
('Emily Wilson','2025-12-22'),
('Vihaan Gupta','2025-12-27'),
('Anaya Das','2026-01-02'),
('Liam Taylor','2026-01-06'),
('Mia Thomas','2026-01-10'),
('Zara Ali','2026-01-14');

-- Orders (20)
INSERT INTO Orders
(OrderDateTime, LocationID, ChannelID, CustomerID, OrderStatus, PromisedDeliveryTime, ActualDeliveryTime, TotalOrderValue)
VALUES
('2026-01-10 12:10',1,1,1,'Completed','2026-01-10 12:45','2026-01-10 12:42',18.50),
('2026-01-10 12:30',1,2,2,'Completed','2026-01-10 13:05','2026-01-10 13:18',22.00),
('2026-01-10 20:05',1,3,3,'Completed','2026-01-10 20:40','2026-01-10 20:39',16.00),
('2026-01-11 19:40',1,4,4,'Cancelled','2026-01-11 20:15',NULL,0),

('2026-01-10 13:05',2,1,5,'Completed','2026-01-10 13:40','2026-01-10 13:46',25.00),
('2026-01-10 20:20',2,4,6,'Completed','2026-01-10 20:55','2026-01-10 20:50',19.50),
('2026-01-11 12:25',2,2,7,'Completed','2026-01-11 13:00','2026-01-11 13:05',14.00),
('2026-01-11 21:10',2,3,8,'Completed','2026-01-11 21:45','2026-01-11 21:44',28.00),
('2026-01-12 19:15',2,1,9,'Completed','2026-01-12 19:50','2026-01-12 20:08',21.00),

('2026-01-10 12:40',3,1,10,'Completed','2026-01-10 13:15','2026-01-10 13:28',17.00),
('2026-01-10 19:55',3,2,11,'Completed','2026-01-10 20:30','2026-01-10 20:33',24.00),
('2026-01-11 13:10',3,3,12,'Completed','2026-01-11 13:45','2026-01-11 13:44',15.50),
('2026-01-11 20:35',3,4,13,'Completed','2026-01-11 21:10','2026-01-11 21:25',20.00),
('2026-01-12 12:05',3,1,14,'Cancelled','2026-01-12 12:40',NULL,0),

('2026-01-12 20:10',1,1,15,'Completed','2026-01-12 20:45','2026-01-12 20:41',26.00),
('2026-01-13 12:15',2,2,1,'Completed','2026-01-13 12:50','2026-01-13 12:55',13.00),
('2026-01-13 19:30',3,3,2,'Completed','2026-01-13 20:05','2026-01-13 20:20',23.50),
('2026-01-14 13:35',1,4,3,'Completed','2026-01-14 14:10','2026-01-14 14:05',11.50),
('2026-01-14 20:55',2,1,4,'Completed','2026-01-14 21:30','2026-01-14 21:29',30.00),
('2026-01-15 20:05',3,2,5,'Completed','2026-01-15 20:40','2026-01-15 20:52',19.00);

-- Order Items
INSERT INTO Order_Items (OrderID, MenuItemID, Quantity, ItemPrice)
VALUES
(1,1,1,18.50),(2,3,1,20),(2,5,2,2),
(3,7,1,12),(3,6,1,4),
(5,2,1,16),(5,10,1,2),
(6,4,1,18),(6,5,1,1.5),
(7,8,1,14),
(8,1,1,18),(8,9,2,5),
(9,3,1,21),
(10,2,1,17),
(11,4,1,18),
(12,1,1,18.5),
(13,6,1,4),(13,7,1,12),
(14,2,1,16),
(16,3,1,21),
(17,8,1,14),
(18,1,1,18.5),(18,10,1,2),
(19,9,2,5),
(20,4,1,18);

-- Delivery Performance
INSERT INTO Delivery_Performance
(OrderID, KitchenPrepTime, RiderWaitTime, DeliveryTimeMinutes, OnTimeFlag)
VALUES
(1,14,3,15,1),(2,18,6,24,0),(3,12,2,15,1),
(5,16,5,20,0),(6,13,3,18,1),(7,15,4,21,0),
(8,12,2,14,1),(9,17,5,23,0),
(10,16,6,20,0),(11,15,4,22,0),
(12,14,3,17,1),(13,13,2,19,1),
(14,18,6,21,0),(16,12,2,17,1),
(17,15,4,19,0),(18,13,3,18,1),
(19,16,5,22,0),(20,14,2,19,1);

-- Customer Feedback
INSERT INTO Customer_Feedback (OrderID, Rating, IssueType, RefundFlag)
VALUES
(1,5,'None',0),(2,3,'Late',1),(3,5,'None',0),
(5,3,'Late',0),(6,4,'None',0),(7,2,'Late',1),
(8,5,'None',0),(9,3,'Late',0),
(10,2,'Cold Food',1),(11,3,'Late',0),
(12,5,'None',0),(13,4,'Missing Item',1),
(14,2,'Late',1),(16,5,'None',0),
(17,3,'Late',0),(18,5,'None',0),
(19,2,'Wrong Item',1),(20,4,'None',0);
