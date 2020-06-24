INSERT INTO users (name, email, password)
VALUES ('batman','batman@gotham.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('superman','superman@kryton.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('antman','antman@freejam.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.')

INSERT INTO properties(
  owner_id,
  title,
  description,
  thumbnail_photo_url,
  cover_photo_url,
  cost_per_night,
  parking_spaces,
  number_of_bathrooms,
  number_of_bedrooms,
  country,
  street ,
  city ,
  province ,
  post_code,
  active
)
VALUES(1,'penthuse 5bhk','condo in the fondo','description','xyz.url','abc.url',5000,1,5,2,'USA','DOG street','dream city','dream province','imaginary post code',true)
VALUES(2,'farmhouse','roti in the foti','description','xyz.url','abc.url',5000,1,5,2,'XSA','CAT street','dream city','dream province','imaginary post code',true)
VALUES(3,'boathouse','boat in the late','description','xyz.url','abc.url',5000,1,5,2,'FSA','DINOSAUR street','dream city','dream province','imaginary post code',true)


INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');
