CREATE table restaurant (
    id serial primary key,
    name TEXT,
    category TEXT,
    address TEXT
);

CREATE TABLE reviewer (
    id serial primary key,
    name TEXT,
    email TEXT,
    karma INT,
    CHECK (karma >= 0 and karma <= 7)
);

CREATE TABLE review (
    id serial primary key,
    reviewer_id INT REFERENCES reviewer(id),
    stars INT 
    CHECK (stars >= 1 and stars <= 5),
    title TEXT,
    review TEXT,
    restaurant_id INT REFERENCES restaurant(id)
);

INSERT INTO restaurant (name, category, address)
VALUES 
    ('Rock''s Chicken & Fries', 'chicken', '3500 Peachtree Rd Suite J3'), 
    ('Yard House', 'american' ,'3586 Peachtree RD NE'), 
    ('Ecco Buckhead', 'European', '261 19th St NW #1100');
    
INSERT INTO reviewer (name, email, karma)
VALUES
    ('Ally Brannon', 'allison.brannon@gmail.com', 7),
    ('Michele Buchanan', 'michbuch@gmail.com', 5),
    ('Jenna Saunders', 'jsaunders@gmail.com', 4),
    ('Brian Brannon', 'bbrannon@gmail.com', 5),
    ('Alexis Mendoza', 'lexy@gmail.com', 7);

INSERT INTO review (reviewer_id, stars, title, review, restaurant_id)
VALUES
    (1, 4, 'Just Okay', 'Great sandwiches and really good wings.', 1),
    (1, 3, 'Good', 'they have a sauce bar with a variety of condiments', 1),
    (2, 4, 'Decent', 'Food came out quickly and I enjoyed the appetizer', 2),
    (2, 5, 'Nice', 'Nice selection of vegan food, good service', 2),
    (3, 5, 'Great', 'Enjoyed the appetizer and server was good', 3);


