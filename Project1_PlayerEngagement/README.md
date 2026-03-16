# Project 1: Player Engagement Analysis

## Objective
Analyze player behavior to understand engagement patterns in a mobile gaming environment. Identify high-engagement players, session trends, and demographic patterns that can guide product and gameplay decisions.

## Dataset
- 3,024 players with features such as:
  - `UserID`, `Age`, `Gender`, `Device`, `GameGenre`
  - Engagement metrics: `SessionCount`, `AverageSessionLength`, `TotalPlayTime`
  - Spending metrics: `InAppPurchaseAmount`, `SpendingSegment`

## Methodology
1. **Data Cleaning & Preprocessing**
   - Handled missing values for Age, Gender, Device, GameGenre, InAppPurchaseAmount
   - Created derived metrics: TotalPlayTime, AgeGroup, HighEngagementFlag

2. **Univariate Analysis**
   - Distribution of Age, SessionCount, AverageSessionLength
   - Device and GameGenre distribution

3. **Bivariate Analysis**
   - AverageSessionLength by Device
   - TotalPlayTime by AgeGroup & Gender
   - Engagement vs SpendingSegment

4. **Multivariate Analysis**
   - Age, Gender, and Device vs TotalPlayTime
   - Engagement metrics correlations

## Key Insights
- 24.6% of players are high-engagement, with longer playtime and more sessions.
- iOS users have slightly higher average session length than Android users.
- Age 18–25 and 26–35 are most active, with notable gender differences in engagement.

## Tools & Skills
- Python (Pandas, NumPy, Matplotlib, Seaborn)
- Data Cleaning, EDA, Feature Engineering
- KPI analysis: SessionCount, TotalPlayTime, HighEngagementFlag

## Visuals (Optional)
- Histograms of session length and playtime
- Boxplots by AgeGroup & Gender
- Engagement heatmaps
