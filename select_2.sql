select genre_name, count(distinct performer_id) from genres g 
join performers_genre pg on g.id = pg.genre_id
group by genre_name;

select count (tracks_name) from tracks t
join albums a on album = a.id
where year_of_issue between 2019 and 2020;

select a.albums_name, AVG(duration) from tracks t
join albums a on t.album = a.id 
group by a.albums_name;

select performers_name, year_of_issue from albums a
join performers_album pa on a.id = pa.performer_id
join performers p on pa.performer_id = p.id
where performers_name not in (select performers_name from performers p2 
where year_of_issue = 2020)

select digests_name from digest d 
join digest_traks dt  on d.id = dt.digests_id 
join tracks t  on dt.tracks_id = t.id
join performers_album pa on t.album = pa.album_id
join performers p  on pa.performer_id = p.id
where performers_name = 'EXO';

select albums_name, count (distinct genre_name) from albums a
join performers_album pa on a.id = pa.album_id 
join performers_genre pg on pa.performer_id  = pg.performer_id 
join genres g  on pg.genre_id = g.id 
group by albums_name
having count (distinct genre_name) > 1;

select tracks_name from tracks t 
left join digest_traks dt on t.id = dt.tracks_id
group by tracks_name, t.id
having t.id = null;

select performers_name, duration from performers p 
join performers_album pa on p.id = pa.performer_id 
join tracks t on pa.album_id = t.album 
where duration = (select min(duration) from tracks t2 );

select albums_name, count(t.id) > count(t.id) from albums a 
join tracks t on a.id = t.album 
group by albums_name;
