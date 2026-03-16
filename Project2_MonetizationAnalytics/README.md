# Project 2: Monetization & Revenue Analytics

## Objective
Analyze in-game spending and revenue patterns. Identify top monetizing segments, ARPU/ARPPU, and spending trends across demographics, devices, and game genres.

## Dataset
- 3,024 players with features including:
  - Demographics: `Age`, `Gender`, `Device`, `GameGenre`
  - Monetization metrics: `InAppPurchaseAmount`, `SpendingSegment`, `FirstPurchaseDaysAfterInstall`, `PaymentMethod`, `LastPurchaseDate`

## Methodology
1. **Revenue Metrics**
   - Calculated Total Revenue, ARPU, ARPPU, Payer Conversion
   - Segmented by SpendingSegment, Device, AgeGroup & Gender, and GameGenre

2. **Segment Analysis**
   - Whale, Dolphin, Minnow revenue contributions
   - Device-based revenue comparison
   - Genre-wise monetization trends

3. **Insights Generation**
   - Identified high-value demographics and top revenue genres
   - Average days to first purchase (~15.4 days) for early intervention

## Key Insights
- Total revenue: $272,862; ARPU: $99.84; ARPPU: $104.51; Payer conversion: 95.5%
- Whales contribute ~60% of revenue; Dolphin ~32%, Minnow ~8%
- Highest revenue genres: Battle Royale, Racing, Strategy; Lowest: Sandbox, Puzzle

## Tools & Skills
- Python (Pandas, NumPy, Matplotlib, Seaborn)
- Revenue KPIs: ARPU, ARPPU, Payer Conversion
- Data segmentation and cohort analysis

## Visuals
- Bar charts for SpendingSegment and Device revenue
- Heatmaps for AgeGroup & Gender spending
- Genre-wise revenue comparison
