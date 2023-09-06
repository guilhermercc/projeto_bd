-- INSERE USUÁRIOS
INSERT INTO USUARIO VALUES (11112222333, 'Pedro', 54321000, 'Apartamento 101', 'Espectador');
INSERT INTO USUARIO VALUES (44445555666, 'Maria', 12345678, 'Casa 202', 'Espectador');
INSERT INTO USUARIO VALUES (77778888999, 'João', 87654321, 'Apartamento 303', 'Streamer');
INSERT INTO USUARIO VALUES (99998888777, 'Ana', 98765432, 'Casa 404', 'Streamer');
INSERT INTO USUARIO VALUES (66665555777, 'Lucas', 65432109, 'Casa 505', 'Espectador');
INSERT INTO USUARIO VALUES (33332222888, 'Marta', 56789012, 'Apartamento 606', 'Espectador');
INSERT INTO USUARIO VALUES (11113333999, 'Paulo', 54321234, 'Apartamento 707', 'Espectador');
INSERT INTO USUARIO VALUES (77776666222, 'Carla', 87651234, 'Casa 808', 'Streamer');
INSERT INTO USUARIO VALUES (22223333444, 'Ricardo', 12349876, 'Casa 909', 'Streamer');
INSERT INTO USUARIO VALUES (55557777888, 'Luiza', 98762345, 'Apartamento 010', 'Espectador');
INSERT INTO USUARIO VALUES (88889999000, 'Gustavo', 76543210, 'Casa 111', 'Espectador');
INSERT INTO USUARIO VALUES (44443333222, 'Larissa', 23456789, 'Casa 121', 'Espectador');
INSERT INTO USUARIO VALUES (99996666777, 'Felipe', 11223344, 'Apartamento 131', 'Espectador');
INSERT INTO USUARIO VALUES (11119999222, 'Thiago', 11223346, 'Apartamento 151', 'Espectador');

-- INSERE E-MAILS
INSERT INTO EMAIL VALUES (11112222333, 'pedro@email.com');
INSERT INTO EMAIL VALUES (44445555666, 'maria@email.com');
INSERT INTO EMAIL VALUES (77778888999, 'joao@email.com');
INSERT INTO EMAIL VALUES (99998888777, 'ana@email.com');
INSERT INTO EMAIL VALUES (66665555777, 'lucas@email.com');
INSERT INTO EMAIL VALUES (66665555777, 'lucas2@email.com');
INSERT INTO EMAIL VALUES (33332222888, 'marta@email.com');
INSERT INTO EMAIL VALUES (11113333999, 'paulo@email.com');
INSERT INTO EMAIL VALUES (77776666222, 'carla@email.com');
INSERT INTO EMAIL VALUES (77776666222, 'carla2@email.com');
INSERT INTO EMAIL VALUES (22223333444, 'ricardo@email.com');
INSERT INTO EMAIL VALUES (55557777888, 'luiza@email.com');
INSERT INTO EMAIL VALUES (88889999000, 'gustavo@email.com');
INSERT INTO EMAIL VALUES (44443333222, 'larissa@email.com');
INSERT INTO EMAIL VALUES (99996666777, 'felipe@email.com');
INSERT INTO EMAIL VALUES (11119999222, 'thiago@email.com');

-- INSERE ESPECTADORES
INSERT INTO ESPECTADOR VALUES (11112222333);
INSERT INTO ESPECTADOR VALUES (44445555666);
INSERT INTO ESPECTADOR VALUES (66665555777);
INSERT INTO ESPECTADOR VALUES (33332222888);
INSERT INTO ESPECTADOR VALUES (11113333999);
INSERT INTO ESPECTADOR VALUES (55557777888);
INSERT INTO ESPECTADOR VALUES (88889999000);
INSERT INTO ESPECTADOR VALUES (44443333222);
INSERT INTO ESPECTADOR VALUES (99996666777);
INSERT INTO ESPECTADOR VALUES (11119999222);

-- INSERE STREAMERS
INSERT INTO STREAMER VALUES (77778888999);
INSERT INTO STREAMER VALUES (99998888777);
INSERT INTO STREAMER VALUES (77776666222);
INSERT INTO STREAMER VALUES (22223333444);

-- INSERE CATEGORIA DE INTERESSE
INSERT INTO CATEGORIA_INTERESSE VALUES (11112222333, 'Tecnologia');
INSERT INTO CATEGORIA_INTERESSE VALUES (44445555666, 'Esportes');
INSERT INTO CATEGORIA_INTERESSE VALUES (55557777888, 'Moda');
INSERT INTO CATEGORIA_INTERESSE VALUES (44443333222, 'Viagens');
INSERT INTO CATEGORIA_INTERESSE VALUES (11119999222, 'Música');

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
INSERT INTO CONTEUDO VALUES (1, 'Título 1', 'Descrição 1', 120, 77778888999, 'Canal de João');
INSERT INTO CONTEUDO VALUES (2, 'Título 2', 'Descrição 2', 150, 99998888777, 'Canal de Ana');
INSERT INTO CONTEUDO VALUES (3, 'Título 3', 'Descrição 3', 180, 77776666222, 'Canal de Carla')
INSERT INTO CONTEUDO VALUES (4, 'Título 4', 'Descrição 4', 90, 22223333444, 'Canal de Ricardo');
INSERT INTO CONTEUDO VALUES (5, 'Título 5', 'Descrição 5', 210, 77778888999, 'Canal de João');

-- INSERE VISUALIZA
INSERT INTO VISUALIZA VALUES (11112222333, 1);
INSERT INTO VISUALIZA VALUES (44445555666, 1);
INSERT INTO VISUALIZA VALUES (66665555777, 2);
INSERT INTO VISUALIZA VALUES (33332222888, 3);
INSERT INTO VISUALIZA VALUES (55557777888, 4);
INSERT INTO VISUALIZA VALUES (11113333999, 5);
INSERT INTO VISUALIZA VALUES (55557777888, 3);
INSERT INTO VISUALIZA VALUES (44443333222, 2);
INSERT INTO VISUALIZA VALUES (11119999222, 4);

-- INSERE COMENTÁRIOS
INSERT INTO COMENTARIOS VALUES (1, 11112222333, 1);
INSERT INTO COMENTARIOS VALUES (2, 44445555666, 1);
INSERT INTO COMENTARIOS VALUES (3, 66665555777, 2);
INSERT INTO COMENTARIOS VALUES (4, 33332222888, 3);
INSERT INTO COMENTARIOS VALUES (5, 55557777888, 4);

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

