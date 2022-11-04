/* Creating database for a misuc site */

create table if not exists Albums(
	album_id serial primary key,
	title varchar(40) not null,
	issue_year date 
);
create table if not exists Digests(
	digest_id serial primary key,
	title varchar(40) not null,
	issue_year date
);
create table if not exists Tracks(
	track_id serial primary key,
	title varchar(40) not null,
	duration integer not null check(duration>0 and duration<3600),
	album_id integer references Albums(album_id)
);
create table if not exists Digests_Tracks(
	track_id serial references Tracks(track_id),
	digest_id serial references Digests(digest_id),
	constraint pk primary key (track_id, digest_id)
);
create table if not exists Performers(
	performer_id serial primary key,
	title varchar(40) not null
);
create table if not exists Performers_Albums(
	performer_id serial references Performers(performer_id),
	album_id serial references Albums(album_id),
	constraint pk1 primary key (performer_id, album_id)
);
create table if not exists Jenres(
	jenre_id serial primary key,
	title varchar(40) not null unique 
);
create table if not exists Jenres_Performers(
	performer_id serial references Performers(performer_id),
	jenre_id serial references Jenres(jenre_id),
	constraint pk2 primary key (performer_id, jenre_id)
);



/* Filling database for a music site */

insert into Performers(title)
	 values ('Madonna');
	
insert into Performers(title)
	 values ('50cent');
	
insert into Performers(title)
	 values ('The Doors');
	
insert into Performers(title)
	 values ('Nirvana');
	
insert into Performers(title)
	 values ('Vivaldi');
	
insert into Performers(title)
   	 values ('Tchaikovsky');
	
insert into Performers(title)
	 values ('Glenn Miller');
	
insert into Performers(title)
	 values ('Louis Armstrong');
	
	
insert into Jenres(title)
	 values ('Pop music');

insert into Jenres(title)
	 values ('Jazz');

insert into Jenres(title)
	 values ('Classic');

insert into Jenres(title)
	 values ('Rock');

insert into Jenres(title)
	 values ('Rap');


insert into Albums(title, issue_year)
     values ('Like a Prayer', '1989-01-01');
     
insert into Albums(title, issue_year)
     values ('Erotica', '1992-01-01');
     
insert into Albums(title, issue_year)
     values ('American Life', '2003-01-01');
     
insert into Albums(title, issue_year)
     values ('Nevermind', '1991-01-01');
     
insert into Albums(title, issue_year)
     values ('Bleach', '1989-01-01');
     
insert into Albums(title, issue_year)
     values ('The four seasons', '1723-01-01');
     
insert into Albums(title, issue_year)
     values ('Waiting for the Sun', '1968-01-01');
     
insert into Albums(title, issue_year)
     values ('Strange Days', '1967-01-01');
    
insert into Albums(title, issue_year)
     values ('Ye', '2018-01-01');
     

insert into Tracks(title, duration, album_id)
     values ('Smells Like Teen Spirit', 301, 5);

insert into Tracks(title, duration, album_id)
     values ('In Bloom', 254, 5);

insert into Tracks(title, duration, album_id)
     values ('Come as You Are', 219, 5);

insert into Tracks(title, duration, album_id)
     values ('Breed', 183, 5);

insert into Tracks(title, duration, album_id)
     values ('Lithium', 257, 5);

insert into Tracks(title, duration, album_id)
     values ('Polly', 177, 5);

insert into Tracks(title, duration, album_id)
     values ('Territorial Pissings', 142, 5);

insert into Tracks(title, duration, album_id)
     values ('Drain You', 223, 5);

insert into Tracks(title, duration, album_id)
     values ('Lounge Act', 156, 5);

insert into Tracks(title, duration, album_id)
     values ('Stay Away', 212, 5);

insert into Tracks(title, duration, album_id)
     values ('On a Plain', 196, 5);

insert into Tracks(title, duration, album_id)
     values ('Something in the Way', 232, 5);

insert into Tracks(title, duration, album_id)
     values ('Endless, Nameless', 403, 5);

insert into Tracks(title, duration, album_id)
     values ('Blew', 175, 6);
     
insert into Tracks(title, duration, album_id)
     values ('Floyd the Barber', 138, 6);

insert into Tracks(title, duration, album_id)
     values ('About a Girl', 168, 6);

insert into Tracks(title, duration, album_id)
     values ('School', 224, 6);

insert into Tracks(title, duration, album_id)
     values ('Can you feel my Love Buzz', 215, 6);

insert into Tracks(title, duration, album_id)
     values ('Paper Cuts', 244, 6);

insert into Tracks(title, duration, album_id)
     values ('Negative Creep', 176, 6);
     

insert into Digests(title, issue_year)
     values ('The Best of Nirvana', '2000-01-01');
     
insert into Digests(title, issue_year)
     values ('The Best of Madonna', '2001-01-01');
     
insert into Digests(title, issue_year)
     values ('The Best of Classic', '2018-01-01');
     
insert into Digests(title, issue_year)
     values ('Slow music', '2019-01-01');
     
insert into Digests(title, issue_year)
     values ('Nice digest', '2020-01-01');
     
insert into Digests(title, issue_year)
     values ('The Best of The Doors', '2000-01-01');
     
insert into Digests(title, issue_year)
     values ('Top-20 in 2019', '2000-01-01');
     
insert into Digests(title, issue_year)
     values ('New Year songs', '2020-01-01');
     

insert into Jenres_Performers
     values (1, 1);
     
insert into Jenres_Performers
     values (2, 5);
     
insert into Jenres_Performers
     values (3, 4);
     
insert into Jenres_Performers
     values (4, 4);
     
insert into Jenres_Performers
     values (5, 3);
     
insert into Jenres_Performers
     values (6, 3);
     
insert into Jenres_Performers
     values (7, 2);
     
insert into Jenres_Performers
     values (8, 2);
     
     
insert into Performers_Albums 
     values (1, 1);
     
insert into Performers_Albums
     values (1, 2);

insert into Performers_Albums
     values (1, 3);

insert into Performers_Albums
     values (4, 4);

insert into Performers_Albums
     values (4, 5);

insert into Performers_Albums
     values (5, 6);

insert into Performers_Albums
     values (3, 7);
    
insert into Performers_Albums
     values (3, 8);

     
insert into Digests_Tracks 
     values (4, 1);

insert into Digests_Tracks 
     values (1, 1);

insert into Digests_Tracks 
     values (10, 1);

insert into Digests_Tracks 
     values (17, 1);

insert into Digests_Tracks 
     values (19, 1);


/* Select requests */
    
select title, issue_year from Albums
 where issue_year = '2018-01-01'

select title, duration  from Tracks
order by duration desc
limit 1;

select title  from Tracks
where duration >= 210

select title from Digests
where issue_year between '2018-01-01' and '2020-01-01'

select title from Performers
where title not like '% %';

select title from Tracks
where title like '%my%';


