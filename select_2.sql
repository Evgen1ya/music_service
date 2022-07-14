select genre_name, count(distinct performer_id) from genres g 
join performers_genre pg on g.id = pg.genre_id
group by genre_name;

select AVG(duration) from tracks
group by album;

select performers_name, year_of_issue from performers p
join performers_album pa on p.id = pa.performer_id
join albums a on pa.album_id = a.id
where year_of_issue != '2020';

select count (distinct year_of_issue) from tracks t
join albums a on album = a.id
where year_of_issue between 2019 and 2020;

select digests_name from digest d 
join digest_traks dt  on d.id = dt.digests_id 
join tracks t  on dt.tracks_id = t.id
join performers_album pa on t.album = pa.album_id
join performers p  on pa.performer_id = p.id
where performers_name = 'EXO';

select albums_name, count (distinct genre_name) > 1  from genres g
join performers_genre pg2 on g.id = pg2.genre_id 
join performers_album pa2 on pg2.performer_id = pa2.performer_id 
join albums a on pa2.album_id = a.id 
group by albums_name;

select tracks_name, dt.tracks_id from tracks t 
full join digest_traks dt on t.id = dt.tracks_id
where  t.id != dt.tracks_id
group by tracks_name, dt.tracks_id;

select performers_name, duration from performers p 
join performers_album pa on p.id = pa.performer_id 
join tracks t on pa.album_id = t.album 
where duration = (select min(duration) from tracks t2 );

select albums_name, count(t.id) > count(t.id) from albums a 
join tracks t on a.id = t.album 
group by albums_name;