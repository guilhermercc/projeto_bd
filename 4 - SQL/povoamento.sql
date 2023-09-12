-- INSERE ESPECTADORES
INSERT INTO ESPECTADOR VALUES (11112222333, 'Pedro', 54321000, 'Apartamento 101');
INSERT INTO ESPECTADOR VALUES (44445555666, 'Maria', 12345678, 'Casa 202');
INSERT INTO ESPECTADOR VALUES (66665555777, 'Lucas', 65432109, 'Casa 505');
INSERT INTO ESPECTADOR VALUES (33332222888, 'Marta', 56789012, 'Apartamento 606');
INSERT INTO ESPECTADOR VALUES (11113333999, 'Paulo', 54321234, 'Apartamento 707');
INSERT INTO ESPECTADOR VALUES (55557777888, 'Luiza', 98762345, 'Apartamento 010');
INSERT INTO ESPECTADOR VALUES (88889999000, 'Gustavo', 76543210, 'Casa 111');
INSERT INTO ESPECTADOR VALUES (44443333222, 'Larissa', 23456789, 'Casa 121');
INSERT INTO ESPECTADOR VALUES (99996666777, 'Felipe', 11223344, 'Apartamento 131');
INSERT INTO ESPECTADOR VALUES (11119999222, 'Thiago', 11223346, 'Apartamento 151');
INSERT INTO ESPECTADOR VALUES (11119999233, 'Guilherme', 11223355, 'Apartamento 102');

-- INSERE CATEGORIA DE INTERESSE
INSERT INTO CATEGORIA_INTERESSE VALUES (11112222333, 'Tecnologia');
INSERT INTO CATEGORIA_INTERESSE VALUES (11112222333, 'Esportes');
INSERT INTO CATEGORIA_INTERESSE VALUES (11112222333, 'Moda');
INSERT INTO CATEGORIA_INTERESSE VALUES (44445555666, 'Esportes');
INSERT INTO CATEGORIA_INTERESSE VALUES (44445555666, 'Tecnologia');
INSERT INTO CATEGORIA_INTERESSE VALUES (55557777888, 'Moda');
INSERT INTO CATEGORIA_INTERESSE VALUES (44443333222, 'Viagens');
INSERT INTO CATEGORIA_INTERESSE VALUES (11119999222, 'Música');


-- INSERE E-MAILS ESPECTADOR
INSERT INTO EMAIL_ESPECTADOR VALUES (11112222333, 'pedro@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (44445555666, 'maria@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (66665555777, 'lucas@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (66665555777, 'lucas2@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (33332222888, 'marta@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (11113333999, 'paulo@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (55557777888, 'luiza@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (88889999000, 'gustavo@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (44443333222, 'larissa@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (44443333222, 'larissa2@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (99996666777, 'felipe@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (11119999222, 'thiago@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (11119999233, 'guilherme@email.com');
INSERT INTO EMAIL_ESPECTADOR VALUES (11119999233, 'guilherme2@email.com');

-- INSERE SEGUE
INSERT INTO SEGUE VALUES (11112222333, 44445555666);
INSERT INTO SEGUE VALUES (11112222333, 66665555777);
INSERT INTO SEGUE VALUES (44445555666, 11112222333);
INSERT INTO SEGUE VALUES (44445555666, 55557777888);
INSERT INTO SEGUE VALUES (66665555777, 11112222333);
INSERT INTO SEGUE VALUES (33332222888, 55557777888);
INSERT INTO SEGUE VALUES (55557777888, 44445555666);
INSERT INTO SEGUE VALUES (55557777888, 11112222333);
INSERT INTO SEGUE VALUES (44443333222, 11112222333);

-- INSERE STREAMERS
INSERT INTO STREAMER VALUES (77778888999, 'João', 87654321, 'Apartamento 303');
INSERT INTO STREAMER VALUES (99998888777, 'Ana', 98765432, 'Casa 404');
INSERT INTO STREAMER VALUES (77776666222, 'Carla', 87651234, 'Casa 808');
INSERT INTO STREAMER VALUES (22223333444, 'Ricardo', 12349876, 'Casa 909');
INSERT INTO STREAMER VALUES (22223333487, 'Pedro', 12349879, 'Casa 302');

-- INSERE E-MAILS STREAMER
INSERT INTO EMAIL_STREAMER VALUES (77778888999, 'joao@email.com');
INSERT INTO EMAIL_STREAMER VALUES (99998888777, 'ana@email.com');
INSERT INTO EMAIL_STREAMER VALUES (77776666222, 'carla@email.com');
INSERT INTO EMAIL_STREAMER VALUES (77776666222, 'carla2@email.com');
INSERT INTO EMAIL_STREAMER VALUES (22223333444, 'ricardo@email.com');


-- INSERE CANAL
INSERT INTO CANAL VALUES (77778888999, 'Canal de João', 'Canal sobre Tecnologia');
INSERT INTO CANAL VALUES (99998888777, 'Canal de Ana', 'Canal sobre Esportes');
INSERT INTO CANAL VALUES (77776666222, 'Canal de Carla', 'Canal sobre Moda');
INSERT INTO CANAL VALUES (22223333444, 'Canal de Ricardo', 'Canal sobre Viagens');

-- INSERE CATEGORIA
INSERT INTO CATEGORIA VALUES (77778888999, 'Canal de João', 'Tecnologia');
INSERT INTO CATEGORIA VALUES (99998888777, 'Canal de Ana', 'Esportes');
INSERT INTO CATEGORIA VALUES (77776666222, 'Canal de Carla', 'Moda');
INSERT INTO CATEGORIA VALUES (22223333444, 'Canal de Ricardo', 'Viagens');

-- INSERE CONTEÚDO
INSERT INTO CONTEUDO VALUES (1, 'https://link1.com', 'Título 1', 'Descrição 1', 120, 77778888999, 'Canal de João');
INSERT INTO CONTEUDO VALUES (2, 'https://link2.com', 'Título 2', 'Descrição 2', 150, 99998888777, 'Canal de Ana');
INSERT INTO CONTEUDO VALUES (3, 'https://link3.com', 'Título 3', 'Descrição 3', 180, 77776666222, 'Canal de Carla');
INSERT INTO CONTEUDO VALUES (4, 'https://link4.com', 'Título 4', 'Descrição 4', 90, 22223333444, 'Canal de Ricardo');
INSERT INTO CONTEUDO VALUES (5, 'https://link5.com', 'Título 5', 'Descrição 5', 210, 77778888999, 'Canal de João');
INSERT INTO CONTEUDO VALUES (6, 'https://link6.com', 'Título 6', 'Descrição 6', 70, 77778888999, 'Canal de João');
INSERT INTO CONTEUDO VALUES (7, 'https://link7.com', 'Título 7', 'Descrição 7', 90, 77778888999, 'Canal de João');
INSERT INTO CONTEUDO VALUES (8, 'https://link8.com', 'Título 8', 'Descrição 8', 195, 99998888777, 'Canal de Ana');


-- INSERE VISUALIZA
-- INSERE VISUALIZAÇÕES COM DATA E HORA
INSERT INTO VISUALIZA VALUES (11112222333, 1, TO_DATE('2023-09-11 10:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (11112222333, 2, TO_DATE('2023-09-11 11:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (11112222333, 3, TO_DATE('2023-09-11 14:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (11112222333, 8, TO_DATE('2023-09-11 16:55:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (44445555666, 1, TO_DATE('2023-09-12 09:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (66665555777, 2, TO_DATE('2023-09-12 13:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (66665555777, 4, TO_DATE('2023-09-13 10:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (33332222888, 3, TO_DATE('2023-09-13 16:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (55557777888, 4, TO_DATE('2023-09-14 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (55557777888, 8, TO_DATE('2023-09-15 08:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (11113333999, 5, TO_DATE('2023-09-16 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (55557777888, 3, TO_DATE('2023-09-17 17:10:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (55557777888, 2, TO_DATE('2023-09-17 19:25:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (44443333222, 2, TO_DATE('2023-09-18 08:40:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (11119999222, 4, TO_DATE('2023-09-18 12:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VISUALIZA VALUES (11119999222, 8, TO_DATE('2023-09-19 07:55:00', 'YYYY-MM-DD HH24:MI:SS'));


-- INSERE COMENTÁRIOS
INSERT INTO COMENTARIOS VALUES (1, 'Muito bom!', 11112222333, 1);
INSERT INTO COMENTARIOS VALUES (6, 'Não gostei', 11112222333, 1);
INSERT INTO COMENTARIOS VALUES (2, 'Interessante!', 44445555666, 1);
INSERT INTO COMENTARIOS VALUES (3, 'Amei', 66665555777, 2);
INSERT INTO COMENTARIOS VALUES (4, 'kkkkkkkkkkkkkk', 33332222888, 3);
INSERT INTO COMENTARIOS VALUES (5, 'Sem graça', 55557777888, 4);
INSERT INTO COMENTARIOS VALUES (7, ':)', 55557777888, 4);
INSERT INTO COMENTARIOS VALUES (8, 'ótimo vídeo', 55557777888, 8);


-- INSERE PRESTÍGIO
INSERT INTO PRESTIGIO VALUES (1, 'Prestígio 1', 'Descrição 1');
INSERT INTO PRESTIGIO VALUES (2, 'Prestígio 2', 'Descrição 2');
INSERT INTO PRESTIGIO VALUES (3, 'Prestígio 3', 'Descrição 3');
INSERT INTO PRESTIGIO VALUES (4, 'Prestígio 4', 'Descrição 4');
INSERT INTO PRESTIGIO VALUES (5, 'Prestígio 5', 'Descrição 5');

-- INSERE ASSINA
INSERT INTO ASSINA VALUES (11112222333, 77778888999, 'Canal de João', 1);
INSERT INTO ASSINA VALUES (44445555666, 99998888777, 'Canal de Ana', 2);
INSERT INTO ASSINA VALUES (66665555777, 77776666222, 'Canal de Carla', 3);
INSERT INTO ASSINA VALUES (55557777888, 22223333444, 'Canal de Ricardo', 4);
INSERT INTO ASSINA VALUES (55557777888, 99998888777, 'Canal de Ana', 4);
INSERT INTO ASSINA VALUES (11112222333, 77776666222, 'Canal de Carla', 1);
INSERT INTO ASSINA VALUES (11112222333, 22223333444, 'Canal de Ricardo', 4);
INSERT INTO ASSINA VALUES (11113333999, 77778888999, 'Canal de João', 2);
INSERT INTO ASSINA VALUES (11113333999, 77776666222, 'Canal de Carla', 1);



