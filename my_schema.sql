CREATE TABLE users(
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR (255),
email VARCHAR(255),
password VARCHAR(255)
)


CREATE TABLE reservations(
id SERIAL PRIMARY KEY NOT NULL,
start_date DATE,
end_date DATE,
property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
)

CREATE TABLE property_reviews(
  id SERIAL PRIMARY KEY NOT NULL,
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
  property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  reservation_id INTEGER NOT NULL REFERENCES reservations(id) ON DELETE CASCADE,
  rating INTEGER
  message TEXT,
)

CREATE TABLE properties(
    id SERIAL PRIMARY KEY NOT NULL,
    owner_id  INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
    description VARCHAR(255)
    thumbnail_photo_url VARCHAR(255)
    cover_photo_url VARCHAR(255)
    cost_per_night INTEGER
    parking_spaces INTEGER
    number_of_bathrooms INTEGER
    number_of_bedrooms INTEGER
    country VARCHAR(255)
    street VARCHAR(255)
    city VARCHAR(255)
    province VARCHAR(255)
    post_code VARCHAR(255)
)
