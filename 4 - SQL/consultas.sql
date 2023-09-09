-- 1. Liste o cpf e o nome dos espectadores que seguem mais de 1 pessoa (HAVING, GROUP BY, INNER JOIN)
SELECT S.CPF_SEGUIDOR, E.NOME, COUNT(*) as NUM_SEGUIDOS 
FROM SEGUE S
INNER JOIN ESPECTADOR E
ON S.CPF_SEGUIDOR = E.CPF
GROUP BY S.CPF_SEGUIDOR, E.NOME
HAVING COUNT(*) > 1;

-- 2. Encontre os streamers que não possuem canais
SELECT * FROM STREAMER 
WHERE CPF NOT IN (SELECT CPF FROM CANAL);

-- 3. Encontre o conteúdo com maior duração em cada canal (SUBSELECT, GROUP BY, INNER JOIN)
SELECT C.NOME_CANAL, CT.TITULO, CT.DURACAO
FROM CONTEUDO CT
INNER JOIN CANAL C 
ON CT.CPF_STREAMER = C.CPF AND CT.NOME_CANAL = C.NOME_CANAL
WHERE (CT.CPF_STREAMER, CT.NOME_CANAL, CT.DURACAO) IN (
    SELECT CPF_STREAMER, NOME_CANAL, MAX(DURACAO)
    FROM CONTEUDO
    GROUP BY CPF_STREAMER, NOME_CANAL
);

-- 4. Projete O nome e o CPF dos espectadores que não assinam nenhum canal (LEFT OUTER JOIN)
SELECT E.CPF, E.NOME
FROM ESPECTADOR E LEFT OUTER JOIN ASSINA A ON E.CPF = A.CPF_ESP
WHERE A.CPF_STR IS NULL


-- 5. Projetar o título e o número de visualizações do conteúdo com id = 2 (SUBSELECT ESCALAR)

SELECT C.TITULO, (SELECT COUNT(*) FROM VISUALIZA V WHERE V.ID = C.ID) AS NUM_VISUALIZACOES
FROM CONTEUDO C
WHERE C.ID = 2;

-- 6. Projetar o nome dos espectadores que assinam o Canal de João (SUBSELECT LINHA)

SELECT E.NOME AS NOME_ESPECTADOR
FROM ESPECTADOR E
WHERE E.CPF IN (
    SELECT A.CPF_ESP
    FROM ASSINA A
    WHERE A.NOME_CANAL = 'Canal de João'
);

-- 7. Projetar os os espectadores que assinam pelo menos um canal e que também possuem comentários em algum conteúdo

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