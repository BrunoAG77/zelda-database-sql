create table zelda_games ( 
    gameid integer not null, 
    name varchar(50) not null, 
    years integer not null, 
    console varchar (50) not null, 
    rating float not null, 
    primary key (gameid) 
);

insert
	into zelda_games (gameid, name, years, console, rating) 
	values (0,'The Legend of Zelda',1987,'NES',8.4);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (1,'The Adventure of Link',1988,'NES',7.3);

insert 
	into zelda_games (gameid, name, years, console, rating)
	values (2,'A Link To The Past',1992,'SNES',9.5);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (3,'Link''s Awakening',1993,'GB',8.7);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (4,'Ocarina of Time',1998,'N64',9.9);

insert
	into zelda_games (gameid, name, years, console, rating) 
	values (5,'Majora''s Mask',2000,'N64',9.5);

insert 
	into zelda_games (gameid, name, years, console, rating)
	values (6,'Oracle of Seasons',2001,'GBC',8.7);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (7,'Oracle of Ages',2001,'GBC',8.8);

insert
	into zelda_games (gameid, name, years, console, rating) 
	values (8,'Four Swords',2002,'GBA',8.5);

insert 
	into zelda_games (gameid, name, years, console, rating)
	values (9,'The Wind Waker',2003,'GC',9.6);

insert 
	into zelda_games (gameid, name, years, console, rating)
	values (10,'Four Swords Adventures',2004,'GC',8.6);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (11,'The Minish Cap',2005,'GBA',8.9);

insert
	into zelda_games (gameid, name, years, console, rating) 
	values (12,'Twilight Princess',2006,'Wii',9.5);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (13,'Phantom Hourglass',2007,'DS',9.0);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (14,'Spirit Tracks',2009,'DS',8.7);

insert
	into zelda_games (gameid, name, years, console, rating) 
	values (15,'Skyward Sword',2011,'Wii',9.3);

insert
	into zelda_games (gameid, name, years, console, rating)
	values (16,'A Link Between Worlds',2013,'3DS',9.1);

insert
	into zelda_games (gameid, name, years, console, rating) 
	values (17,'Hyrule Warriors',2014,'Wii U',7.6);

insert
	into zelda_games (gameid, name, years, console, rating)
	values (18,'Triforce Heroes',2015,'3DS',7.2);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (19,'Breath of the Wild',2017,'Switch',9.7);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (20,'Cadence of Hyrule',2019,'Switch',8.5);

insert 
	into zelda_games (gameid, name, years, console, rating)
	values (21,'Hyrule Warriors: Age of Calamity',2020,'Switch',7.8);

insert
	into zelda_games (gameid, name, years, console, rating)
	values (22,'Tears of the Kingdom',2023,'Switch',9.6);

insert 
	into zelda_games (gameid, name, years, console, rating) 
	values (23,'Echoes of Wisdom',2024,'Switch',8.6);

select * from zelda_games;

select * from zelda_games
	order by rating;

select console, count(*) as console_count from zelda_games 
    group by console
    order by console_count;
    
select gameid, name, rating from zelda_games where rating > (
    select avg (rating)
    from zelda_games
);

select gameid, name, rating from zelda_games where rating < (
    select avg (rating)
    from zelda_games
)
