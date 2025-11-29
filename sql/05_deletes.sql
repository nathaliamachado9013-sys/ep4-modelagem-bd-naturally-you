-- 05_deletes.sql
-- Comandos de remoção de dados (DELETE) no mini-mundo Naturally You

-- 1) Remover comentários neutros sem intenção de compra (limpeza de dados menos relevantes)
DELETE FROM comentario
WHERE sentimento = 'neutro'
  AND (intencao_compra = FALSE OR intencao_compra IS NULL);

-- 2) Remover compras de teste interno (caso futuramente sejam inseridas com país = 'Teste')
DELETE FROM compra
WHERE pais_comprador = 'Teste';

-- 3) Remover vídeos com pouquíssimas visualizações (exemplo: menos de 100 views)
DELETE FROM video
WHERE qtd_visualizacoes < 100;
