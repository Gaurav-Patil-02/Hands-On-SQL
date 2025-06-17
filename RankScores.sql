
SELECT score, Dense_Rank() Over (Order By score DESC) As `rank`
FROM Scores;

