

-- 1. Répartition des candidats par pays et par statut d'éligibilité
SELECT 
    [Current Country of Residence] AS Pays,
    [Form Status] AS Statut,
    COUNT(*) AS Total_Candidats
FROM [dbo].[Fact_Immigration_Evaluation]
GROUP BY [Current Country of Residence], [Form Status]
ORDER BY Total_Candidats DESC;

-- 2. Score CRS moyen selon le niveau d'éducation
SELECT 
    [Education Level] AS Niveau_Education,
    AVG([CRS Score]) AS Score_CRS_Moyen,
    COUNT(*) AS Nombre_De_Candidats
FROM [dbo].[Fact_Immigration_Evaluation]
GROUP BY [Education Level]
ORDER BY Score_CRS_Moyen DESC;

-- 3. Création d'une VUE pour les candidats éligibles (Idéal pour Power BI)
EXEC ('
CREATE VIEW vw_Candidats_Eligibles AS
SELECT 
    [Title] AS Nom,
    [CRS Score] AS Score_CRS,
    [Current Country of Residence] AS Pays,
    [Education Level] AS Niveau_Education
FROM [dbo].[Fact_Immigration_Evaluation]
WHERE [Form Status] = ''Eligible'';
');