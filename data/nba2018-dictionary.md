# Data dictionary file for nba2018.csv

The data is about the players of the nba games that have taken place in 2018. There are _477 rows_(not including the headers) and _38 columns_. The main source of the data is the [Basketball reference website](https://www.basketball-reference.com/), where the data itself from each **team** is extracted. For example, for the [GS Warriors](https://www.basketball-reference.com/teams/GSW/2018.html).

Here's the description of the R objects in nba2018.csv:

| Name| Description | Units of measurement | Possible missing values | 
|:-------------|:-------------|:-------------|:-------------| 
| `player`     | first and last names of player  |      | None  |
| `number`    | number on jersey  |    | None  |
| `team`   | 3-letter team abbreviation  |      | None  |
| `position`  | player's position | years     | None  |
| `height` | player's height |feet-inches     | None  |
| `weight`     | player's weight | pounds | None|
| `birth_date`     | date of birth | month, day, year| None|
| `country`    | 2-letter country abbreviation | |None|
| `experience`  | experience in NBA  | years | None|
| `college`   | attended college in USA  | | Left as blank |
| `salary`        | player salary | dollarrs | None|
| `rank` | Rank of player in his team | | None|
| `age`|Age of Player at the start of February 1st of that season |years|None |
| `games_started`    | Games Started || None|
| `minutes`    | Minutes Played during regular season | minutes| None|
| `field_goals`    | Field Goals Made | | None|
| `field_goals_atts`   | Field Goal Attempts  | | None|
| `field_goals_perc`        | Field Goal Percentage | | 'NA' |
| `points3` | 3-Point Field Goals | | None|
| `points3_atts`     | 3-Point Field Goal Attempts | | None
| `points3_perc`     | 3-Point Field Percentage | | 'NA' |
| `points2`    | 2-Point Field Goals | | 'NA'|
| `points2_atts`    | 2-Point Field Goal Attempts | | None |
| `points2_perc`    | 2-Point Field Goal Percentage | | 'NA'|
| `effective_field_goal_perc` | Effective Field Goal Percentage||'NA' |
| `points1`     | Free Throws Made ||None|
| `points1_atts`    | Free Throw Attempts || None |
| `points1_perc`    | Free Throw Percentage | | 'NA'|
| `off_rebounds`    | Offensive Rebounds || None|
| `def_rebounds`  | Defensive Rebounds | | None |
| `assists`     | Assists | | None|
| `steals`    | Steals | | None |
| `blocks`    | Blocks | | None|
| `turnovers`    | Turnovers || None|
| `fouls`    | Fouls | | None|
| `points`    | Total points || None|

