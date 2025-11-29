-- 04_updates.sql
-- Comandos de atualização de dados (UPDATE) no mini-mundo Naturally You

-- 1) Aumentar a quantidade de visualizações do vídeo 1 (simulando crescimento orgânico)
UPDATE video
SET qtd_visualizacoes = qtd_visualizacoes + 500
WHERE id_video = 1;

-- 2) Reajustar em 10% o preço do eBook sobre manchas na pele
UPDATE ebook
SET preco = preco * 1.10
WHERE titulo = 'Mapa Natural para Clarear Manchas de Acne';

-- 3) Marcar como intenção de compra todos os comentários positivos que ainda não estavam marcados
UPDATE comentario
SET intencao_compra = TRUE
WHERE sentimento = 'positivo'
  AND (intencao_compra IS FALSE OR intencao_compra IS NULL);
