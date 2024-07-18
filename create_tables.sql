CREATE TABLE album
(
    album_id INT NOT NULL,
    title VARCHAR(160) NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT album_pkey PRIMARY KEY  (album_id)
);

CREATE TABLE artist
(
    artist_id INT NOT NULL,
    name VARCHAR(120),
    CONSTRAINT artist_pkey PRIMARY KEY  (artist_id)
);

CREATE TABLE customer
(
    customer_id INT NOT NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    company VARCHAR(80),
    address VARCHAR(70),
    city VARCHAR(40),
    state VARCHAR(40),
    country VARCHAR(40),
    postal_code VARCHAR(10),
    phone VARCHAR(24),
    fax VARCHAR(24),
    email VARCHAR(60) NOT NULL,
    support_rep_id INT,
    CONSTRAINT customer_pkey PRIMARY KEY  (customer_id)
);

INSERT INTO artist (artist_id, name) VALUES
    (1, N'AC/DC'),
    (2, N'Accept'),
    (3, N'Aerosmith'),
    (4, N'Alanis Morissette'),
    (5, N'Alice In Chains'),
    (6, N'Antônio Carlos Jobim'),
    (7, N'Apocalyptica'),
    (8, N'Audioslave'),
    (9, N'BackBeat'),
    (10, N'Billy Cobham');
    
INSERT INTO album (album_id, title, artist_id) VALUES
    (1, N'For Those About To Rock We Salute You', 1),
    (2, N'Balls to the Wall', 2),
    (3, N'Restless and Wild', 2),
    (4, N'Let There Be Rock', 1),
    (5, N'Big Ones', 3),
    (6, N'Jagged Little Pill', 4),
    (7, N'Facelift', 5),
    (8, N'Warner 25 Anos', 6),
    (9, N'Plays Metallica By Four Cellos', 7),
    (10, N'Audioslave', 8);
    
INSERT INTO customer (customer_id, first_name, last_name, company, address, city, state, country, postal_code, phone, fax, email, support_rep_id) VALUES
    (1, N'Luís', N'Gonçalves', N'Embraer - Empresa Brasileira de Aeronáutica S.A.', N'Av. Brigadeiro Faria Lima, 2170', N'São José dos Campos', N'SP', N'Brazil', N'12227-000', N'+55 (12) 3923-5555', N'+55 (12) 3923-5566', N'luisg@embraer.com.br', 3),
    (2, N'Leonie', N'Köhler', NULL, N'Theodor-Heuss-Straße 34', N'Stuttgart', NULL, N'Germany', N'70174', N'+49 0711 2842222', NULL, N'leonekohler@surfeu.de', 5),
    (3, N'François', N'Tremblay', NULL, N'1498 rue Bélanger', N'Montréal', N'QC', N'Canada', N'H2G 1A7', N'+1 (514) 721-4711', NULL, N'ftremblay@gmail.com', 3),
    (4, N'Bjørn', N'Hansen', NULL, N'Ullevålsveien 14', N'Oslo', NULL, N'Norway', N'0171', N'+47 22 44 22 22', NULL, N'bjorn.hansen@yahoo.no', 4),
    (5, N'František', N'Wichterlová', N'JetBrains s.r.o.', N'Klanova 9/506', N'Prague', NULL, N'Czech Republic', N'14700', N'+420 2 4172 5555', N'+420 2 4172 5555', N'frantisekw@jetbrains.com', 4),
    (6, N'Helena', N'Holý', NULL, N'Rilská 3174/6', N'Prague', NULL, N'Czech Republic', N'14300', N'+420 2 4177 0449', NULL, N'hholy@gmail.com', 5),
    (7, N'Astrid', N'Gruber', NULL, N'Rotenturmstraße 4, 1010 Innere Stadt', N'Vienne', NULL, N'Austria', N'1010', N'+43 01 5134505', NULL, N'astrid.gruber@apple.at', 5),
    (8, N'Daan', N'Peeters', NULL, N'Grétrystraat 63', N'Brussels', NULL, N'Belgium', N'1000', N'+32 02 219 03 03', NULL, N'daan_peeters@apple.be', 4),
    (9, N'Kara', N'Nielsen', NULL, N'Sønder Boulevard 51', N'Copenhagen', NULL, N'Denmark', N'1720', N'+453 3331 9991', NULL, N'kara.nielsen@jubii.dk', 4),
    (10, N'Eduardo', N'Martins', N'Woodstock Discos', N'Rua Dr. Falcão Filho, 155', N'São Paulo', N'SP', N'Brazil', N'01007-010', N'+55 (11) 3033-5446', N'+55 (11) 3033-4564', N'eduardo@woodstock.com.br', 4);
    
SELECT * FROM artist;

SELECT * FROM album;

SELECT * FROM customer;
