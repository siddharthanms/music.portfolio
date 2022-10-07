select name from bands;
-- to check the names of the table is correct

select * from albums 
where release_YEAR  is not null
order by release_year
limit 1;
-- finding the olderst album;

select * from albums 
where release_YEAR  is not null
order by release_year desc
limit 1;
-- finding the newest album


select distinct bands.name as 'band names'
from bands
join albums
on bands.id = albums.band_id;
-- get all bands that  have albums

SELECT bands.name AS 'Band Name'
FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) = 0;
-- getr all bands that have no album

select 
albums.name as name,
albums.release_year as 'release year',
sum(songs.length) as 'duration'
from albums join songs
on albums.id = songs.album_id
group by songs.album_id
order by duration desc
limit 1;
-- get the longest album;

select * from albums
where release_year is null;

update albums
set release_year = 1986
where id = 4;
-- update the release year of the album with ni release year

insert into bands (name)
values (' A R RAHMAN- band');

select id from bands
order by id desc
limit 2 ;

insert into albums ( name, release_year, band_id)
values ('vtm',2010,8);

select * from albums
order by id desc
limit 2;
-- inserting record for your favourite band and one of their albums

delete from albums 
where  id = 19 and 20;

delete from bands
where band.id = 8 and 9;
select * from bands;
-- delete the band and album you added 

select avg(length) as 'avg song duration'
from songs;
-- get the average length of all songs

select albums.name as 'album',
albums.release_year as 'release_year',
max(songs.length) as 'duration'
from albums join songs
on albums.id = songs.album_id
group by songs.album_id;
-- select longest song of each album

select bands.name as 'band',
count(songs.id) as 'number of songs'
from bands 
join albums on bands.id = albums.band_id
join songs on albums.id = songs.album_id 
group by albums.band_id;
-- get the number of songs for each band



