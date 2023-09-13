-- 1. Liste o cpf e o nome dos espectadores que seguem mais de 1 pessoa (HAVING, GROUP BY, INNER JOIN)

SELECT S.CPF_SEGUIDOR, E.NOME, COUNT(*) as NUM_SEGUIDOS 
FROM SEGUE S
INNER JOIN ESPECTADOR E
ON S.CPF_SEGUIDOR = E.CPF
GROUP BY S.CPF_SEGUIDOR, E.NOME
HAVING COUNT(*) > 1;


-- 2. Encontre os streamers que não possuem canais (SUBCONSULTA TIPO TABELA)
SELECT * FROM STREAMER 
WHERE CPF NOT IN (SELECT CPF FROM CANAL);


-- 3. Qual é a média de duração dos conteúdos publicados por cada canal, juntamente com seu nome e sua descrição? (INNER JOIN)

SELECT C.NOME_CANAL, C.DESCRICAO, AVG(CT.DURACAO) AS MEDIA_DURACAO
FROM CANAL C
INNER JOIN CONTEUDO CT ON C.CPF = CT.CPF_STREAMER AND C.NOME_CANAL = CT.NOME_CANAL
GROUP BY C.NOME_CANAL, C.DESCRICAO;


-- 4. Projete o nome e o CPF dos espectadores que não assinam nenhum canal (LEFT OUTER JOIN)

SELECT E.CPF, E.NOME
FROM ESPECTADOR E LEFT OUTER JOIN ASSINA A ON E.CPF = A.CPF_ESP
WHERE A.CPF_STR IS NULL;


-- 5. Projetar o título e o número de visualizações do conteúdo com id = 2 (SUBCONSULTA TIPO ESCALAR)

SELECT C.TITULO, (SELECT COUNT(*) FROM VISUALIZA V WHERE V.ID = C.ID) AS NUM_VISUALIZACOES
FROM CONTEUDO C
WHERE C.ID = 2;

-- 6. Projetar o nome dos espectadores que assinam o Canal de João (SUBCONSULTA TIPO TABELA)

SELECT E.NOME AS NOME_ESPECTADOR
FROM ESPECTADOR E
WHERE E.CPF IN (
    SELECT A.CPF_ESP
    FROM ASSINA A
    WHERE A.NOME_CANAL = 'Canal de João'
);

-- 7. Projetar os os espectadores que assinam pelo menos um canal e que também possuem comentários em algum conteúdo (SUBCONSULTA TIPO TABELA)

SELECT E.CPF, E.NOME
FROM ESPECTADOR E
WHERE E.CPF IN (
    SELECT A.CPF_ESP
    FROM ASSINA A
)
AND E.CPF IN (
    SELECT C.CPF
    FROM COMENTARIOS C
)
ORDER BY E.CPF;


-- 8. Projetar o nome de todos os espectadores e suas respectivas categorias de interesse (JUNÇÃO EXTERNA)

SELECT E.NOME, CI.CATEGORIA_INTERESSE
FROM ESPECTADOR E
LEFT JOIN CATEGORIA_INTERESSE CI ON E.CPF = CI.CPF;


-- 9. Projetar espectadores que também são seguidores (SEMI-JUNÇÃO)

SELECT E.CPF, E.NOME
FROM ESPECTADOR E
WHERE EXISTS (
    SELECT *
    FROM SEGUE S
    WHERE S.CPF_SEGUIDOR = E.CPF
);


-- 10. Projetar os espectadores que não fizeram comentários (ANTI-JUNÇÃO)

SELECT E.CPF, E.NOME
FROM ESPECTADOR E
WHERE NOT EXISTS (
    SELECT *
    FROM COMENTARIOS C
    WHERE C.CPF = E.CPF
);


-- 11. Projete os nomes dos espectadores que têm pelo menos uma categoria de interesse associada. (SUBCONSULTA TIPO TABELA)

SELECT E.NOME
FROM ESPECTADOR E
WHERE E.CPF IN (SELECT CI.CPF 
                FROM CATEGORIA_INTERESSE CI);


-- 12. Projete o nome do streamers que possuem um canal mas não tem um endereço completo cadastrado na plataforma (SUBCONSULTA TIPO TABELA)

SELECT S.NOME
FROM STREAMER S
WHERE S.CPF IN (SELECT C.CPF FROM CANAL C)
AND S.END_CEP IS NULL OR S.END_COMPLEMENTO IS NULL;


-- 13. Identifique os espectadores que não seguem outros espectadores e não assinam nenhum canal. (ANTI-JOIN)

SELECT E.CPF
FROM ESPECTADOR E
WHERE NOT EXISTS (
    SELECT *
    FROM SEGUE S
    WHERE S.CPF_SEGUIDOR = E.CPF
)
AND NOT EXISTS (
    SELECT *
    FROM ASSINA A
    WHERE A.CPF_ESP = E.CPF
);


-- 14. Projete o nome dos espectadores que são assinantes do canal do streamer cujo email é "breninho@gmail.com". (JUNÇÃO, SUBCONSULTA TIPO LINHA)

SELECT E.NOME
FROM ESPECTADOR E INNER JOIN ASSINA A ON E.CPF = A.CPF_ESP
WHERE (A.CPF_STR, A.NOME_CANAL) = (SELECT C.CPF, C.NOME_CANAL
						   		    FROM CANAL C INNER JOIN STREAMER S ON C.CPF = S.CPF
                           		    WHERE S.EMAIL = 'breninho@gmail.com');


-- 15. Projete o nome dos espectadores que visualizaram um conteúdo ou assinaram um canal (UNION)

SELECT E.NOME FROM ESPECTADOR E
WHERE E.CPF IN (
    SELECT V.CPF FROM VISUALIZA V
    UNION
    SELECT A.CPF_ESP FROM ASSINA A
);

-- 16. Identifique os CPFs de espectadores que seguem pelo menos um streamer da categoria Música 
-- e encontre os CPFs dos espectadores que também comentaram em conteúdo desses streamers (INTERSECT)

SELECT E.CPF
FROM ESPECTADOR E
WHERE E.CPF IN (
    SELECT S.CPF_SEGUIDOR
    FROM SEGUE S
    WHERE S.CPF_SEGUIDO IN (
        SELECT C.CPF
        FROM CATEGORIA C
        WHERE C.CATEGORIA = 'Música'
    )
)
INTERSECT
SELECT V.CPF
FROM VISUALIZA V
JOIN SEGUE S ON V.CPF = S.CPF_SEGUIDOR
WHERE S.CPF_SEGUIDO IN (
    SELECT C.CPF
    FROM CATEGORIA C
    WHERE C.CATEGORIA = 'Música'
);


--17. Identifique quais espectadores comentaram mais de uma vez no mesmo conteúdo(GROUP BY, HAVING)

SELECT C.CPF, C.ID_CONTEUDO, COUNT(*) AS QUANTIDADE
FROM COMENTARIOS C
GROUP BY C.CPF, C.ID_CONTEUDO
HAVING COUNT(*) > 1;

--18. Identifique todos os canais que não possuem nenhum assinante (MINUS)

SELECT C.CPF, C.NOME_CANAL
FROM CANAL C
MINUS
SELECT A.CPF_STR, A.NOME_CANAL
FROM ASSINA A;	