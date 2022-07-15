select albums_name, year_of_issue from albums
where year_of_issue = 2018;

select tracks_name, duration from tracks
order by duration desc 
limit 1;

select tracks_name from tracks
where duration >= '00:03:30';

select digests_name from digest
where year_of_issue between 2018 and 2020;

select performers_name from performers
where performers_name not like '% %';

select tracks_name from tracks
where tracks_name like ('%Skin%');  


