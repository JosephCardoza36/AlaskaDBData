--A list of the band (in ascending order), band members, and the instruments that each band member plays in alphabetic order by band member's last name, then first name.
1.
SELECT bandname,
    firstname,
    lastname,
    instrument
FROM memberstbl
    JOIN bandstbl ON bandid = bandfk
    JOIN playstbl ON memberid = memberfk
    JOIN instrumentstbl ON instrumentid = instrumentfk
ORDER BY lastname,
    firstname 

-- A list of bands and the genres that they play
2.SELECT bandname,
    genre
FROM mixestbl
    JOIN bandstbl ON bandid = bandfk
    JOIN genrestbl ON genreid = genrefk

-- Count the number of band members in each band

3. SELECT bandname,COUNT(memberid) AS members
FROM memberstbl
JOIN bandstbl ON bandid = bandfk
GROUP BY bandname

-- Count the number of instruments each band could use based on what their current band members play 
4. SELECT bandname, COUNT(playid) AS num_of_instruments
FROM playstbl
JOIN memberstbl ON memberid = memberfk
JOIN bandstbl ON bandid = bandfk
JOIN instrumentstbl ON instrumentid = instrumentfk
GROUP BY bandname

-- List out all band members who are in bands that play country music

5. SELECT DISTINCT firstname, lastname, bandname, genreid, genre
FROM memberstbl
JOIN bandstbl ON bandid = bandfk
JOIN ( 

    SELECT genreid, genre
    FROM genrestbl 
    JOIN mixestbl ON genreid = genrefk
    
)
WHERE genreid = (

    SELECT genreid 
    FROM genrestbl
    WHERE genreid = 3
)

-- Find all bands that use a mandolin (instrument)

6. SELECT bandname, instrument
FROM bandstbl
JOIN memberstbl ON bandid = bandfk
JOIN playstbl ON memberid = memberfk
JOIN instrumentstbl ON instrumentid = instrumentfk
WHERE instrumentid = 7

-- List out all the genres played by bands except the Tundra Kings

7. SELECT genre, bandname
FROM genrestbl
JOIN mixestbl ON genreid = genrefk
JOIN bandstbl ON bandid = bandfk
WHERE bandid != 3;

-- Count the number of people who play each instrument
8.  SELECT COUNT(memberid) AS people, instrument
FROM memberstbl
JOIN playstbl ON memberid = memberfk
JOIN instrumentstbl ON instrumentid = instrumentfk
GROUP BY instrument

-- Find all bands whose musicians use an above average number of instruments 

9. SELECT bandname, COUNT(instrumentid) AS inst_count
FROM playstbl
JOIN memberstbl ON memberid = memberfk
JOIN bandstbl ON bandid = bandfk
JOIN instrumentstbl ON instrumentid = instrumentfk 
GROUP BY bandname
HAVING COUNT(instrumentid) > 5
