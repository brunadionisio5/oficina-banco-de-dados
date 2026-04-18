# Sistema de Banco de Dados para Oficina Mecânica

## Descrição do Projeto

Este projeto tem como objetivo a modelagem e implementação de um banco de dados relacional para o gerenciamento de uma oficina mecânica. O sistema permite armazenar e manipular informações relacionadas a clientes, veículos, mecânicos, ordens de serviço e serviços realizados.

O desenvolvimento foi realizado com base nos conceitos de modelagem de dados, partindo do modelo conceitual (DER) para o modelo lógico relacional, seguido da implementação em SQL.

---

## Modelo Lógico

O esquema do banco de dados foi estruturado a partir das seguintes entidades:

* **Cliente**
* **Veículo**
* **Mecânico**
* **Ordem de Serviço**
* **Serviço**
* **Item de Serviço**

### Relacionamentos

* Um **cliente** pode possuir vários veículos (1:N)
* Um **veículo** pode estar associado a várias ordens de serviço (1:N)
* Um **mecânico** pode atender várias ordens de serviço (1:N)
* Uma **ordem de serviço** pode conter vários serviços (N:N), resolvido pela tabela intermediária *Item_Servico*

---

## Consultas SQL Implementadas

O projeto contempla consultas SQL com diferentes níveis de complexidade, atendendo aos requisitos propostos no desafio.

### ✔ SELECT

Recuperação simples de dados.

### ✔ WHERE

Filtragem de registros com base em condições específicas.

### ✔ Atributos Derivados

Utilização de expressões para cálculo de valores, como o total de serviços.

### ✔ ORDER BY

Ordenação de resultados.

### ✔ GROUP BY + HAVING

Agrupamento de dados e aplicação de filtros em grupos.

### ✔ JOIN

Junção de múltiplas tabelas para obtenção de informações mais completas.

---

## ❓ Exemplos de Perguntas Respondidas pelas Consultas

* Quais clientes estão cadastrados no sistema?
* Quais ordens de serviço estão em aberto?
* Qual o valor total de cada ordem de serviço?
* Quais serviços são mais caros?
* Quais clientes possuem maior gasto na oficina?
* Quais mecânicos atenderam determinadas ordens?

---

## Considerações Finais

O sistema desenvolvido atende aos requisitos propostos no Desafio de Projeto da DIO, demonstrando a aplicação prática de conceitos fundamentais de banco de dados. A estrutura permite fácil expansão, podendo ser adaptada para cenários mais complexos, como controle de estoque de peças e gestão financeira da oficina.
