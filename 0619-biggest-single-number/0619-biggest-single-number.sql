SELECT MAX(num) AS num
FROM mynumbers
WHERE num IS NOT NULL
  AND num IN (
      SELECT num
      FROM mynumbers
      WHERE num IS NOT NULL
      GROUP BY num
      HAVING COUNT(*) = 1
  );