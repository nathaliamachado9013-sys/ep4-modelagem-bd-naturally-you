# Projeto SQL – Naturally You 💚

## 🎯 Contexto do Mini-mundo

A **Naturally You** é uma criadora de conteúdo focada em **skincare natural**, com presença forte em redes sociais como TikTok e Instagram.  
Ela produz vídeos sobre:

- rotinas de cuidados para **pele oleosa, sensível, com manchas**,  
- uso de ingredientes naturais (óleos vegetais, argilas, hidrolatos),  
- e vende **eBooks digitais** com guias completos de skincare natural.

O objetivo do banco de dados é:

- registrar os **temas** abordados nos conteúdos,  
- armazenar **vídeos** e suas métricas de engajamento,  
- registrar **comentários** com análise de sentimento e intenção de compra,  
- controlar as **vendas dos eBooks**, associando-as aos vídeos quando possível.

Este repositório reúne os scripts SQL da **Experiência Prática IV – Implementação e Manipulação de Dados**, a partir do modelo lógico desenvolvido nas etapas anteriores da disciplina de **Modelagem e Banco de Dados**.

---

## 🗂️ Estrutura do Banco de Dados

Tabelas principais:

- `tema` – temas dos conteúdos (ex.: Pele Oleosa, Pele Sensível, Manchas e Uniformização);
- `ebook` – eBooks digitais de skincare natural vendidos pela Naturally You;
- `video` – vídeos publicados com métricas de engajamento (visualizações, curtidas, comentários etc.);
- `comentario` – comentários relevantes dos vídeos, com sentimento e intenção de compra;
- `compra` – registros de vendas dos eBooks, incluindo país do comprador e, quando possível, o vídeo que originou a venda.

As tabelas foram normalizadas até a **Terceira Forma Normal (3FN)**, garantindo:

- ausência de atributos multivalorados,  
- dependência total da chave primária,  
- ausência de dependências transitivas entre atributos não-chave.

---

## 📁 Arquivos deste repositório

Todos os scripts estão na pasta [`sql/`](./sql):

- `01_create_tables.sql`  
  Criação das tabelas `tema`, `ebook`, `video`, `comentario` e `compra`, com chaves primárias e estrangeiras.

- `02_insert_data.sql`  
  Popula as tabelas com dados de exemplo coerentes com o mini-mundo Naturally You (temas de skincare, vídeos, comentários e compras de eBooks).

- `03_select_queries.sql`  
  Conjunto de consultas SQL utilizando `SELECT`, `JOIN`, `WHERE`, `GROUP BY`, `ORDER BY` e `LIMIT` para analisar:
  - vídeos por tema,
  - vídeos mais visualizados,
  - vendas e faturamento por eBook,
  - comentários com intenção de compra,
  - vendas por país.

- `04_updates.sql`  
  Scripts de atualização (`UPDATE`) para simular:
  - crescimento orgânico de visualizações de um vídeo,
  - reajuste de preço de eBook,
  - marcação de comentários positivos como intenção de compra.

- `05_deletes.sql`  
  Scripts de remoção (`DELETE`) com condições específicas, para:
  - limpar comentários neutros sem intenção de compra,
  - remover registros de teste,
  - eliminar vídeos com baixíssimo desempenho (exemplo didático).

---

## ▶️ Como Executar os Scripts (PostgreSQL + pgAdmin 4)

1. Instale o **PostgreSQL** (versão 18 ou similar) e o **pgAdmin 4**.
2. No pgAdmin, conecte ao servidor PostgreSQL.
3. Crie um banco de dados com o nome:

   CREATE DATABASE naturally_you;
   
   Selecione o banco naturally_you e abra a Query Tool.

   Execute, na seguinte ordem:

   01_create_tables.sql – para criar as tabelas;

   02_insert_data.sql – para inserir dados de exemplo;

   03_select_queries.sql – para visualizar os dados e analisar o mini-mundo;

   04_updates.sql – para aplicar atualizações;

   05_deletes.sql – para testar remoções com segurança.

🧩 Tecnologias Utilizadas

    PostgreSQL 18.x

    pgAdmin 4

    SQL padrão (DDL + DML)

    Git e GitHub para versionamento e compartilhamento de código

📌 Observação

Este projeto foi desenvolvido como parte da Experiência Prática IV da disciplina de Modelagem e Banco de Dados do curso Análise e Desenvolvimento de Sistemas da Universidade Cruzeiro do Sul, utilizando como base o mini-mundo Naturally You, criado e documentado nas Experiências Práticas anteriores (minimundo, DER, modelo lógico e normalização).
