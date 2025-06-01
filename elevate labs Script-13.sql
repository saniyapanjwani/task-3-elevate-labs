create database skysport;
use skysport;



#Q1 Import 
#Q2 #Write an sql query to show all the UNIQUE team names 
select * from footballp;
select distinct team from footballp;

#Q3 Write an SQL query to show name of team which has rank 1 
#from group 7 
select team 
from footballp
where `group`=7 and `rank`=1;

#Q4 Write an sql query to show count of all teams 
select count(team)
from footballp;
#Q5 Write an SQL query to show matches_played by each team
select matches_played,team
from footballp;
#Q6 	Write an SQL query to show team, percent of wins with respect to 
#matches_played by each team and name the resulting column as wins_percent
 select team, (wins/matches_played*100) as wins_percent
 from footballp;
#Q7 Write an SQL query to show which team has maximum goals_scored
# and their count
select distinct team,goals_scored
from footballp
order by goals_scored desc limit 1;

#Q8Write an SQL query to show percent of draws with respect to matches_played
# round of to 2 digits by each team
select team,round((draws/matches_played*100),2) as draws_percent
from footballp;

#Q9.	 Write an SQL query to show which team has minimum goals_scored 
#and their count.
select team ,goals_scored
from footballp
where goals_scored=(select min(goals_scored)from footballp);

#Q10  Write an SQL query to show percent of losses with respect to matches_played by EACH 
#team in ascending order by losses and name the resulting column as losses_percent
select  team, round((losses/matches_played*100),2) as losses_percent
from footballp
order by losses;
#Q11 Write an SQL query to show the average goal_difference 
select avg(goal_difference)
from footballp;
#Q12  Write an SQL query to show name of the team where points are 0 
select team , points
from  footballp
where `points`=0;

#Q23Write an SQL query to show team, cards_yellow, cards_red
 #where cards_red is equal to 1 in ascending order by cards_yellow 
select team,cards_yellow,cards_red
from footballstats
where cards_red=1
order by cards_yellow asc;
#25Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 
#in ascending order by goals_assists_pens_per90 
select team,goals_pens_per90, goals_assists_pens_per90
from footballstats
order by goals_assists_pens_per90 asc;

#Q26 Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct
# where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 
select team,shots,shots_on_target,shots_on_target_pct
from footballstats
where shots_on_target_pct>30
order by shots_on_target_pct ;

#Q27 Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team,shots_per90, shots_on_target_per90
from footballstats
where team="belgium";
#Q30 Write an SQL query to show team, fouls which has maximum number of fouls
select team,fouls
from footballstats
order by fouls desc limit 1;

#31 Write an SQL query to show team, offisdes which has offsides less than 10 or
# greater than 20
select team , offsides
from footballstats
where offsides<10 or offsides>20;

#Q32Write an SQL query to show team, aerials_won, aerials_lost, 
#aerials_won_pct in descending order by aerials_won_pct 
select  team, aerials_won , aerials_lost,aerials_won_pct
from footballstats
order by aerials_won_pct desc;

#Q33 Write an SQL query to show number of teams each group has!
select count(team),`group`
from footballp
group by `group`
order by count(team);

#Q34
select team,games,minutes
from footballstats
where team like "s%";

#Q35 
select * from footballstats
where team in (
select team 
from footballstats
where team='Croatia'
)
order by avg_age desc;













#28. Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target,
#average_shot_distance in descending order by average_shot_distance



select * from footballp;
select * from footballstats;

