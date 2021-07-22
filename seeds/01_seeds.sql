ALTER TABLE users 
ALTER COLUMN password
SET DEFAULT '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.';

INSERT INTO users (name, email)
VALUES ('Amy', 'amy@email.com'),
('Bryan', 'bryan@email.com'),
('Catherine', 'catherine@email.com'),
('Daniel', 'dy@email.com'),
('Emily', 'emily@email.com');

ALTER TABLE properties 
ALTER COLUMN description
SET DEFAULT 'description',
ALTER COLUMN thumbnail_photo_url
SET DEFAULT 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350',
ALTER COLUMN cover_photo_url
SET DEFAULT 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg';

INSERT INTO properties (owner_id, title, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'one for amy', 3000, 1, 3, 5, 'Canada', '123 Kingsway', 'Burnaby', 'B.C.', 'V0S 0L0', TRUE),
(2, 'two for bryan', 600, 1, 1, 2, 'Canada', '456 Kingsway', 'Burnaby', 'B.C.', 'V0S 0L0', TRUE),
(3, 'three for catherine', 200, 1, 1, 1, 'Canada', '789 Kingsway', 'Burnaby', 'B.C.', 'V0S 0L0', FALSE),
(4, 'four for daniel', 1500, 1, 2, 3, 'Canada', '135 Kingsway', 'Burnaby', 'B.C.', 'V0S 0L0', TRUE),
(5, 'five for emily', 50, 0, 1, 1, 'Canada', '246 Kingsway', 'Burnaby', 'B.C.', 'V0S 0L0', FALSE);

INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES (1, 1, '2021-07-27', '2021-07-31'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14'),
(4, 4, '2021-11-01', '2021-11-2'),
(5, 5, '2021-12-14', '2021-12-20');

ALTER TABLE property_reviews 
ALTER COLUMN message
SET DEFAULT 'message';

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating)
VALUES (1, 1, 1, 5),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);