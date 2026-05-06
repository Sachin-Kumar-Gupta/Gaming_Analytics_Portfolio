-- 1. Create and Train the Model
CREATE OR REPLACE MODEL `game-analytics-495509.gaming_churn_data.churn_model`
OPTIONS(
  model_type='logistic_reg',
  input_label_cols=['churned'],
  auto_class_weights=TRUE -- Handles imbalance if churners are rare
) AS
SELECT
  level_reached,
  session_duration,
  in_app_purchase_amount,
  churned
FROM
  `game-analytics-495509.gaming_churn_data.raw_churn_data`;

-- 2. Evaluate the Model Performance
SELECT
  *
FROM
  ML.EVALUATE(MODEL `game-analytics-495509.gaming_churn_data.churn_model`);

-- 3. Predict Churn for Current Players
SELECT
  player_id,
  predicted_churned,
  predicted_churned_probs[OFFSET(0)].prob as probability_of_churn
FROM
  ML.PREDICT(MODEL `game-analytics-495509.gaming_churn_data.churn_model`,
    (SELECT * FROM `game-analytics-495509.gaming_churn_data.raw_churn_data` WHERE player_id <= 10))