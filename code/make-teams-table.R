#title: Data preparation 

#description: Create a csv data file that will contain 
#the required variables to be used in the ranking analysis.

#input: nba2018.csv
#output: nba2018-teams.csv

#A bit of preprocessing
nba <-read.csv('https://raw.githubusercontent.com/ucb-stat133/stat133-fall-2018/master/data/nba2018.csv', 
                   header = TRUE)

#experience
typeof(nba$experience)
nba$experience[nba$experience == "R"] <- 0
nba$experience <- as.integer(nba$experience)

#salary
nba$salary <- nba$salary/1000000

#position
typeof(nba$position)
nba$position <- as.factor(nba$position)
levels(nba$position) <- c("C"="center", "PF"="power_fwd", 
                          "PG"="power_guard", "SF"="small_fwd",
                          "SG"="shooting_guard")
levels(nba$position) 

#Adding new variables
library(dplyr)

nba <- mutate(nba, 
              missed_field_goals= nba$field_goals_atts - nba$field_goals, 
              missed_free_throws = nba$points1_atts - nba$points1,
              rebounds = nba$off_rebounds+ nba$def_rebounds,
              mins_game = nba$minutes/nba$games,
              efficiency = (points+ rebounds+ assists+ steals+ blocks- 
                       missed_field_goals- missed_free_throws-turnovers)
              /games)

sink('/Users/wanyinchen/Desktop/stat133/stat133-hws-fall18/workout1/output/efficiency-summary.txt')
summary(nba$efficiency)
sink()

#Creating nba2018-teams.csv
# computing total values, for each team
teams <- select(nba, team, experience, salary, points3, points2, 
                points1, points, off_rebounds, def_rebounds, assists,
                steals, blocks, turnovers, fouls, efficiency)
teams <- summarise( group_by(teams, team), total_experience= sum(experience), 
           total_salary= sum(salary), total_3points= sum(points3), 
           total_2points= sum(points2), total_freehthrows= sum(points1),
           total_points= sum(points), total_off_rebounds= sum(off_rebounds), 
           total_def_rebounds= sum(def_rebounds), total_assists= 
             sum(assists), total_steals= sum(steals), total_blocks= 
             sum(blocks), total_turnovers= sum(turnovers), 
           total_fouls= sum(fouls), total_eff= sum(efficiency))

sink('/Users/wanyinchen/Desktop/stat133/stat133-hws-fall18/workout1/data/teams-summary.txt')
summary(teams)
sink()

sink('/Users/wanyinchen/Desktop/stat133/stat133-hws-fall18/workout1/data/nba2018-teams.csv')
write.csv(teams, col.names= TRUE)
sink()
