insert into genres (genre_name) values ('fulk'), ('k-pop'), ('blues'), ('R&B'), ('rock');
insert into performers (performers_name) values ('TWICE'), ('EXO'), ('Ian Penn'), ('Muse'), ('Nirvana'), ('Rihanna'), ('Christina Aguilera'), ('Blues Delight');
insert into performers_genre (performer_id, genre_id) values (8,10), (7,11), (6,11), (5,12), (4,12), (3,8), (2,9), (1,9);
insert into albums  (albums_name, year_of_issue) values ('FANCY YOU', 2019), ('LOVE SHOT', 2018), 
('Two Drank Soju', 2021), ('Deluxe', 2012), ('Nevermind', 1991), ('Loud', 2010), ('Keeps Gettin Better: A Decade of Hits', 2008), ('Open All Night', 2009);
insert into performers_album (performer_id, album_id) values (1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8);
insert into tracks (tracks_name, duration, album) values ('FANCY', '00:03:33', 1), ('I CANT STOP ME', '00:03:25', 1), ('Love Shot', '00:03:20', 2), 
('Wait', '00:04:08', 2), ('Shades', '00:05:00', 3), ('Sea Wall', '00:03:34', 3), ('Supremacy', '00:04:55', 4), ('Madness', '00:04:41', 4), 
('School', '00:02:43', 5), ('Polly', '00:02:49', 5), ('Skin', '00:05:03', 6), 
('S&M', '00:04:03', 6), ('Hurt', '00:04:01', 7), ('Genie In A Bottle', '00:03:36', 7), ('Get It', '00:04:13', 8), ('Twenty-one', '00:05:21', 8);
insert into digest (digests_name, year_of_issue) values ('Love', 2021), ('SHOT', 2020), ('Drank', 2022), ('Deluxe 2.0 ', 2015), 
('Nevermind', 2005), ('Loud me', 2014), ('A Decade of Hits', 2011), ('Night', 2019);
insert into digest_traks (digests_id, tracks_id) values (1,1), (1,2), (2,3), (2,4), (3,5), (3,6), (4,7), (4,8), (5,9), (5,10), (6,11), (6,12), (7,13), 
(7,14), (8,15), (8,16);