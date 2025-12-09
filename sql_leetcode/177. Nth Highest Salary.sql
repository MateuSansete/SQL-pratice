CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY (
    -- Escreva sua consulta PostgreSQL abaixo.
    WITH RankedSalaries AS (
        SELECT 
            e.salary, -- Qualificando a coluna salary da tabela Employee (ou usando um alias 'e')
            DENSE_RANK() OVER (ORDER BY e.salary DESC) as rank_n
        FROM 
            Employee e -- Alias 'e' para a tabela Employee
    )
    SELECT 
        rs.salary  -- **CORREÇÃO APLICADA: Qualificando a coluna salary do CTE RankedSalaries**
    FROM 
        RankedSalaries rs -- Alias 'rs' para o CTE RankedSalaries
    WHERE 
        rs.rank_n = N
    LIMIT 1
  );
END;
$$ LANGUAGE plpgsql;