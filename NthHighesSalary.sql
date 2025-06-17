CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE offsetVal INT;
  DECLARE result INT;

  SET offsetVal = N - 1;

  SET result = (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET offsetVal
  );

  RETURN result;
END
