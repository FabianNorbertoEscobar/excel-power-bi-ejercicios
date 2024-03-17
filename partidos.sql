CREATE DATABASE partidos;

create table teams
(team_id int not null auto_increment,
team_name varchar (100),
country varchar (100),
captain_id int not null,
primary key (team_id));

create table matches
(match_id int not null auto_increment,
team1_id int not null,
team2_id int not null,
match_date int not null,
winner_id int not null,
score_team1 int not null,
score_team2 int not null,
primary key (match_id));

create table player
(player_id int not null auto_increment,
player_name varchar (100),
team_id int not null,
roles varchar (100),
salary int not null,
primary key (player_id));

INSERT INTO teams (team_id, team_name, country, captain_id) 
VALUES (1, 'Cloud9', 'USA', 1), 
(2, 'Fnatic', 'Sweden', 2), 
(3, 'SK Telecom T1', 'South Korea', 3), 
(4, 'Team Liquid', 'USA', 4), 
(5, 'G2 Esports', 'Spain', 5);

INSERT INTO player (player_id, player_name, team_id, roles, salary) 
VALUES (1, 'Shroud', 1, 'Rifler', 100000), 
(2, 'JW', 2, 'AWP', 90000), 
(3, 'Faker', 3, 'Mid laner', 120000), 
(4, 'Stewie2k', 4, 'Rifler', 95000), 
(5, 'Perkz', 5, 'Mid laner', 110000), 
(6, 'Castle09', 1, 'AWP', 120000), 
(7, 'Pike', 2, 'Mid Laner', 70000), 
(8, 'Daron', 3, 'Rifler', 125000), 
(9, 'Felix', 4, 'Mid Laner', 95000), 
(10, 'Stadz', 5, 'Rifler', 98000), 
(11, 'KL34', 1, 'Mid Laner', 83000), 
(12, 'ForceZ', 2, 'Rifler', 130000), 
(13, 'Joker', 3, 'AWP', 128000), 
(14, 'Hari', 4, 'AWP', 90000), 
(15, 'Wringer', 5, 'Mid laner', 105000);

INSERT INTO matches (match_id, team1_id, team2_id, match_date, winner_id, score_team1, score_team2) VALUES 
(1, 1, 2, '20220101', 1, 16, 14), 
(2, 3, 5, '20220201', 3, 14, 9), 
(3, 4, 1, '20220301', 1, 17, 13), 
(4, 2, 5, '20220401', 5, 13, 12), 
(5, 3, 4, '20220501', 3, 16, 10), 
(6, 1, 3, '20220201', 3, 13, 17), 
(7, 2, 4, '20220301', 2, 12, 9), 
(8, 5, 1, '20220401', 1, 11, 15), 
(9, 2, 3, '20220501', 3, 9, 10), 
(10, 4, 5, '20220101', 4, 13, 10);

/*
select team_id, count(*)
from player
group by team_id;

select *
from player p
right join teams t
on p.player_id = t.captain_id;

select t.team_name
from player p
inner join teams t
on p.team_id = t.team_id
where p.player_id = 3;

select t.team_name, p.player_name
from player p
inner join teams t
on p.player_id = t.captain_id
where p.player_id = 2;

select *
from player p
left join teams t
on p.player_id = t.captain_id;

select avg(p.salary)
from player p
inner join teams t
on p.team_id = p.team_id
where t.country = 'USA';

select m.match_date, m.winner_id, t.team_name
from matches m
left join teams t
on m.winner_id = t.team_id
where m.match_id = 3;




*/


