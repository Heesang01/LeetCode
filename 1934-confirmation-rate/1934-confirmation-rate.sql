SELECT
  s.user_id,
  ROUND(COALESCE(a.rate, 0), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN (
  SELECT
    user_id,
    AVG(action = 'confirmed') AS rate
  FROM Confirmations
  GROUP BY user_id
) a
  ON a.user_id = s.user_id;