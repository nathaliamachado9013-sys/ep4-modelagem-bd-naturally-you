-- 02_insert_data.sql
-- Inserção de dados de exemplo no bd mini-mundo Naturally You

-- Inserindo temas de skincare natural
INSERT INTO tema (nome_tema, descricao_tema) VALUES
('Pele Oleosa e Acneica',
 'Conteúdos focados em limpeza, controle de oleosidade e redução de acne com ingredientes naturais.'),
('Pele Sensível',
 'Rotinas suaves com ativos calmantes, sem agredir a barreira cutânea.'),
('Manchas e Uniformização',
 'Cuidados naturais para clarear manchas de acne e uniformizar o tom da pele.');

-- Inserindo eBooks Naturally You
INSERT INTO ebook (titulo, tema_principal, preco, link_venda) VALUES
('Guia Completo de Skincare Natural para Pele Oleosa', 1, 49.90,
 'https://naturallyyou.com/ebooks/pele-oleosa'),
('Rotinas Calmantes para Pele Sensível', 2, 39.90,
 'https://naturallyyou.com/ebooks/pele-sensivel'),
('Mapa Natural para Clarear Manchas de Acne', 3, 59.90,
 'https://naturallyyou.com/ebooks/manchas-acne');

-- Inserindo vídeos publicados no perfil Naturally You
INSERT INTO video (titulo, data_publicacao, id_tema,
                   qtd_visualizacoes, qtd_curtidas, qtd_comentarios,
                   qtd_compartilhamentos, qtd_salvamentos)
VALUES
('Rotina completa de skincare natural para pele oleosa', '2025-03-10', 1,
 15000, 2200, 380, 210, 900),

('Como montar uma rotina calmante para pele sensível', '2025-03-18', 2,
 8200, 1300, 190, 95, 600),

('3 passos naturais para clarear manchas de espinha', '2025-03-25', 3,
 19700, 3100, 450, 260, 1100),

('Erros que estão piorando sua pele oleosa', '2025-04-02', 1,
 12500, 1800, 260, 150, 720);

-- Inserindo comentários dos vídeos
INSERT INTO comentario (id_video, data_comentario, texto_comentario, sentimento, intencao_compra)
VALUES
(1, '2025-03-11', 'Minha pele é super oleosa, já quero esse eBook!', 'positivo', TRUE),
(1, '2025-03-12', 'Adorei as dicas, vou testar a rotina primeiro.', 'positivo', FALSE),
(2, '2025-03-19', 'Tenho rosácea, esse conteúdo salvou minha pele!', 'positivo', TRUE),
(3, '2025-03-26', 'Já comprei o eBook de manchas, ansiosa pra começar.', 'positivo', TRUE),
(4, '2025-04-03', 'Não sabia que esses ingredientes eram tão importantes.', 'neutro', FALSE);

-- Inserindo compras de eBooks
INSERT INTO compra (id_ebook, id_video, data_compra, valor_venda, pais_comprador)
VALUES
(1, 1, '2025-03-13', 49.90, 'Brasil'),
(1, 4, '2025-04-05', 49.90, 'Portugal'),
(2, 2, '2025-03-20', 39.90, 'Brasil'),
(3, 3, '2025-03-28', 59.90, 'Brasil'),
(3, NULL, '2025-04-01', 59.90, 'Portugal');
