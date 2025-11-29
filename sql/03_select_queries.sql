-- 03_select_queries.sql
-- Consultas SELECT para análise do mini-mundo Naturally You

-- 1) Listar todos os vídeos com o nome do tema correspondente
SELECT 
    v.id_video,
    v.titulo AS titulo_video,
    t.nome_tema,
    v.qtd_visualizacoes,
    v.qtd_curtidas
FROM video v
JOIN tema t ON v.id_tema = t.id_tema
ORDER BY t.nome_tema, v.data_publicacao;

-- 2) Top 3 vídeos mais visualizados
SELECT 
    titulo,
    qtd_visualizacoes
FROM video
ORDER BY qtd_visualizacoes DESC
LIMIT 3;

-- 3) Total de vendas por eBook, com faturamento
SELECT 
    e.titulo AS ebook,
    COUNT(c.id_compra) AS total_vendas,
    COALESCE(SUM(c.valor_venda), 0) AS faturamento
FROM ebook e
LEFT JOIN compra c ON e.id_ebook = c.id_ebook
GROUP BY e.id_ebook, e.titulo
ORDER BY faturamento DESC;

-- 4) Comentários com intenção de compra (intencao_compra = TRUE)
SELECT 
    v.titulo AS video,
    c.texto_comentario,
    c.sentimento,
    c.intencao_compra
FROM comentario c
JOIN video v ON c.id_video = v.id_video
WHERE c.intencao_compra = TRUE;

-- 5) Vendas de eBooks por país
SELECT 
    pais_comprador,
    COUNT(*) AS qtd_compras,
    SUM(valor_venda) AS total_faturado
FROM compra
GROUP BY pais_comprador
ORDER BY total_faturado DESC;
