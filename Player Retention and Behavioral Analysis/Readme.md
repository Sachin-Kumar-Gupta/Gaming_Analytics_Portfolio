# 🎮 Player Retention & Behavioral Analysis (Mobile Game)
  **Game Analyst Report**


## 🧾 Executive Summary
This analysis evaluates player behavior for a mobile game using cohort retention, progression funnels, engagement trends, segmentation, and behavioral correlation analysis.

The primary objective was to identify:
* Where players drop off
* How engagement evolves over time
* What drives long-term retention

## Key Outcome:
Player retention is primarily driven by progression depth and time in-game, not raw engagement intensity. Significant churn occurs in early gameplay stages, indicating onboarding and early progression friction.

## 🧠 Problem Statement
The game is experiencing:
* High early-user churn
* Weak long-term retention
* Unclear progression bottlenecks

**The business question:**
> "At what point do players stop playing, and what behavioral patterns explain retention vs churn?"


## 🧪 Methodology
This analysis was conducted using:\

**Tools**
* PostgreSQL (data extraction & aggregation)
* Python (pandas, matplotlib, seaborn)
* Cohort analysis
* Funnel analysis
* Correlation analysis
* Player segmentation

**Data Structure**
Player-level event dataset containing:
* session_count
* playtime_minutes
* level_reached
* days_since_install
* install cohort data

## 📊 Analysis Breakdown

**1. 📉 Retention Analysis (Cohort Behavior)**
Retention was calculated across install cohorts and tracked over time.
**Findings:**
1. Sharp drop in retention after Day 1
2. Continuous decline until stabilization among core users
3. Long-tail retention dominated by a small engaged segment


**Interpretation:**
> Early onboarding experience fails to retain a large portion of users.

**2. 🎯 Progression Funnel Analysis**

Player progression was analyzed using max level reached per user.
Findings:
* Major drop-off observed between early levels (Level 2–5)
* Funnel shows steep decay in player progression
* Very small percentage of users reach mid-to-late game

**Interpretation:**
> Early gameplay contains friction points causing significant churn.

**3. 📊 Engagement Trends**
Engagement was measured via:
* session_count
* playtime_minutes

Findings:
* Engagement is highest in early lifecycle
* Gradual decline in session frequency over time
* Playtime stabilizes among retained users


**Interpretation:**
> Engagement alone does not guarantee retention; sustained progression is more important.

**4. 👥 Player Segmentation**
Players were grouped into:
1. Early Churn
2. Mid Churn
3. Retained


## Behavioral Summary:
| Segment | Sessions | Playtime | Level Reached |
| --- | --- | --- | --- |
| Early | Churn | High | High | Low (~3) |
| Mid Churn | Moderate | Moderate | Low (~3–4) |
| Retained | Lower per-day intensity | Moderate | High (~7+) |

**Interpretation:**
> Retained players progress significantly deeper despite lower per-day activity.

**5. 🔗 Correlation Analysis**
Key relationships:
* Level Reached ↔ Days Since Install: 0.83 (strong positive)
* Session Count ↔ Playtime: 0.31 (moderate positive)
* Session Count ↔ Days: -0.41 (negative trend)
* Playtime ↔ Level: weak relationship

**Key Insight:**
Progression is strongly dependent on retention duration rather than engagement intensity.

## 🔥 Key Findings (Business Critical)
1. Early Game Churn is the Primary Issue
Most players drop off within early levels (Level 1–5).

2. Progression Drives Retention
Players who remain longer naturally reach higher levels.

3. Engagement Declines Over Time
Session frequency decreases as lifecycle progresses.

4. Retained Users Are a High-Value Segment
They show deeper progression and stable engagement patterns.

## 💡 Actionable Recommendations

**🎮 1. Improve Early Game Experience**
* Simplify Level 1–3 difficulty curve
* Reduce onboarding friction
* Add early rewards and guided progression

**🎯 2. Strengthen Progression Hooks**
* Introduce milestone rewards at Level 3–5
* Add clear progression incentives
* Improve visual feedback for advancement

**📱 3. Increase Daily Engagement Systems**
* Implement daily rewards
* Add streak-based mechanics
* Introduce limited-time events

**🧠 4. Focus on Retention Over Raw Engagement**
* Optimize for “time retained” rather than session spikes
* Build systems that encourage return behavior


## 📌 Conclusion
The analysis demonstrates that:

> Player retention is primarily driven by progression depth and sustained engagement over time, not short-term session intensity.

The most critical improvement area lies in the early-game experience, where a large proportion of players disengage before reaching meaningful gameplay depth.
Addressing early-level friction and introducing stronger progression incentives will significantly improve long-term retention and player lifetime value.
