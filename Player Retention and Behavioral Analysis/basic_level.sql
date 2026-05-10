-- Total users
SELECT COUNT(DISTINCT player_id) FROM player_activity;
-- We have 7500 players

-- Date range
SELECT MIN(session_date), MAX(session_date) FROM player_activity;
-- We have data from 07/March/2026 to 04/May/2026

-- Check nulls
SELECT COUNT(*) FROM player_activity WHERE player_id IS NULL;
-- We don't have any null values in our dataset

-- Retention Analysis
select install_date, days_since_install, 
count(distinct player_id) as active_players
from player_activity
group by 1,2
order by 1,2;

select install_date,
count(distinct player_id) as cohort_size
from player_activity
where days_since_install = 0
group by 1;

-- Retention table
create temp table retention_table as
with cohort as (
select install_date, count(distinct player_id) as cohort_size
from player_activity
where days_since_install = 0
group by 1),
activity as(
select install_date, days_since_install,
count(distinct player_id) as active_player
from player_activity
group by 1,2
)
select a.install_date, a.days_since_install, a.active_player,
c.cohort_size, 
ROUND(a.active_player * 100.0 / c.cohort_size,2) as retention_pct
from activity a
join cohort c
on a.install_date = c.install_date
order by 1,2
;

-- Key Retention Metrics
select install_date,
	max(case when days_since_install = 1 THEN retention_pct END) AS d1,
    max(case when days_since_install = 3 THEN retention_pct END) AS d3,
    max(case when days_since_install = 7 THEN retention_pct END) AS d7
from retention_table  -- (use your previous query as a CTE or temp table)
group by install_date
order by 1;

-- Funnel Analysis
select level_reached, count(distinct player_id) AS players
from player_activity
group by level_reached
order by level_reached;

-- Where Users quit ?
WITH max_level AS (
    SELECT
        player_id,
        MAX(level_reached) AS max_level
    FROM player_activity
    GROUP BY player_id
)
SELECT
    max_level,
    COUNT(*) AS players
FROM max_level
GROUP BY max_level
ORDER BY max_level;

--Funnel
WITH player_max AS (
    SELECT
        player_id,
        MAX(level_reached) AS max_level
    FROM player_activity
    GROUP BY player_id
),
level_counts AS (
    SELECT
        max_level AS level,
        COUNT(*) AS players
    FROM player_max
    GROUP BY max_level
),
total AS (
    SELECT SUM(players) AS total_players FROM level_counts
)
SELECT
    l.level,
    l.players,
    ROUND(l.players * 100.0 / t.total_players, 2) AS retention_pct,
    LAG(l.players) OVER (ORDER BY l.level) AS prev_players,
    ROUND(
        (LAG(l.players) OVER (ORDER BY l.level) - l.players) * 100.0
        / NULLIF(LAG(l.players) OVER (ORDER BY l.level), 0),
        2
    ) AS drop_off_pct
FROM level_counts l
CROSS JOIN total t
ORDER BY l.level;

-- Avg Session by retention
SELECT
    days_since_install,
    AVG(session_count) AS avg_sessions,
    AVG(playtime_minutes) AS avg_playtime
FROM player_activity
GROUP BY days_since_install
ORDER BY days_since_install;

--Engaged Vs Churned users
WITH last_seen AS (
    SELECT
        player_id,
        MAX(days_since_install) AS last_day
    FROM player_activity
    GROUP BY player_id
)
SELECT
    CASE
        WHEN last_day <= 1 THEN 'Churned Early'
        WHEN last_day <= 3 THEN 'Mid Churn'
        ELSE 'Retained'
    END AS segment,
    COUNT(*) AS users
FROM last_seen
GROUP BY segment;