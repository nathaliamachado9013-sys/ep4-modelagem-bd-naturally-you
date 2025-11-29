-- 01_create_tables.sql
-- Criação das tabelas do mini-mundo Naturally You em PostgreSQL

-- Tabela TEMA: temas de conteúdo (ex.: pele oleosa, pele sensível etc.)
CREATE TABLE tema (
    id_tema SERIAL PRIMARY KEY,
    nome_tema VARCHAR(100) NOT NULL,
    descricao_tema TEXT
);

-- Tabela EBOOK: eBooks de skincare natural vendidos pela Naturally You
CREATE TABLE ebook (
    id_ebook SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    tema_principal INTEGER NOT NULL REFERENCES tema(id_tema),
    preco DECIMAL(10,2) NOT NULL,
    link_venda TEXT
);

-- Tabela VIDEO: vídeos publicados no perfil Naturally You
CREATE TABLE video (
    id_video SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    data_publicacao DATE NOT NULL,
    id_tema INTEGER NOT NULL REFERENCES tema(id_tema),
    qtd_visualizacoes INTEGER DEFAULT 0,
    qtd_curtidas INTEGER DEFAULT 0,
    qtd_comentarios INTEGER DEFAULT 0,
    qtd_compartilhamentos INTEGER DEFAULT 0,
    qtd_salvamentos INTEGER DEFAULT 0
);

-- Tabela COMENTARIO: comentários relevantes feitos nos vídeos
CREATE TABLE comentario (
    id_comentario SERIAL PRIMARY KEY,
    id_video INTEGER NOT NULL REFERENCES video(id_video),
    data_comentario DATE NOT NULL,
    texto_comentario TEXT,
    sentimento VARCHAR(20),
    intencao_compra BOOLEAN
);

-- Tabela COMPRA: registro das vendas de eBooks
CREATE TABLE compra (
    id_compra SERIAL PRIMARY KEY,
    id_ebook INTEGER NOT NULL REFERENCES ebook(id_ebook),
    id_video INTEGER REFERENCES video(id_video),
    data_compra DATE NOT NULL,
    valor_venda DECIMAL(10,2) NOT NULL,
    pais_comprador VARCHAR(60) NOT NULL
);
