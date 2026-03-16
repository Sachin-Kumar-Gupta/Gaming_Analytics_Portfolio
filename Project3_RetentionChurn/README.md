# Project 3: Retention & Churn Analysis

## Objective
Analyze player retention and churn patterns. Identify high-risk churn segments, engagement vs churn, and cohort retention trends to inform data-driven retention strategies.

## Dataset
- 3,024 players with features including:
  - Engagement metrics: `SessionCount`, `AverageSessionLength`, `TotalPlayTime`, `HighEngagementFlag`
  - Monetization metrics: `InAppPurchaseAmount`, `SpendingSegment`
  - Retention metrics: `ChurnFlag`, `FirstPurchaseWeek`, `LastPurchaseDate`

## Methodology
1. **Churn Definition**
   - Players flagged as churned if inactive >60 days or TotalPlayTime <30

2. **Retention Analysis**
   - Retention rate by Device, SpendingSegment, AgeGroup & Gender
   - Cohort retention by FirstPurchaseWeek
   - Engagement metrics vs Churn

3. **Insights & Recommendations**
   - Identify high-risk segments and key retention drivers
   - Suggest targeted campaigns to improve onboarding and early engagement

## Key Insights
- Overall retention rate: 30.77%
- Android retention slightly higher (70.4%) vs iOS (67.6%)
- Whales have higher churn (34.4%) → potential VIP retention focus
- Cohort analysis shows newer players tend to churn quickly

## Recommendations
- Improve early onboarding: tutorial rewards, starter packs, push notifications
- Device-specific retention campaigns, especially for iOS
- Target VIP players with personalized offers to reduce churn
- Track cohort retention over time to measure campaign effectiveness

## Tools & Skills
- Python (Pandas, NumPy, Matplotlib, Seaborn)
- Churn analysis, cohort analysis, retention KPIs
- Actionable insights for player retention and monetization

## Visuals
- Bar charts: Device and SpendingSegment retention
- Boxplots: Engagement metrics vs ChurnFlag
- Cohort retention line chart
