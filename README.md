# Análise Comercial com base no banco AdventureWorks
Este projeto tem como objetivo demonstrar minhas habilidades na construção de uma solução de Business Intelligence completa, utilizando SQL Server, Integration Services (SSIS) e Power BI. A base de dados utilizada foi o banco público AdventureWorks, simulado como uma empresa comercial fictícia com abrangência internacional.


Estrutura do Projeto

1. Modelagem e ETL com SQL Server e SSIS
Utilizei o SQL Server para ingestão e modelagem dos dados brutos.

Criei uma instância de Data Warehouse com tabelas fato e dimensões normalizadas.

Desenvolvi um fluxo de ETL completo com o SSIS:

Extração das tabelas brutas do AdventureWorks.

Transformações com regras de negócios, criação de campos derivados como GrossProfit, YearMonth, FullDate, etc.

Carregamento em tabelas de destino modeladas no padrão estrela.

Automatizei o pipeline com pacotes SSIS sequenciais e controle de qualidade de carga.

2. Criação do Modelo Tabular no Power BI
Conectei o Power BI ao banco relacional criado.

Realizei a modelagem de dados no Power BI Desktop:

Relacionamentos bem definidos entre as tabelas fato e dimensões.

Criação de hierarquias (ex: Ano > Mês > Dia).

Formatação de campos e definição de métricas com DAX.

📊 Dashboards Criados

Página 1 — Visão Geral de Vendas
KPIs dinâmicos com Revenue, Gross Profit, Total Orders e Ticket Médio.

Gráficos de séries temporais com Year over Year (YoY) dinâmico.

Filtros por tempo e categoria.

Cores institucionais harmônicas e layout corporativo.

Página 2 — Análise Geográfica
Tabelas com os Top 10 Estados e Cidades por Total Sales.

KPI de Revenue Médio por Estado, Total de Pedidos e Ticket Médio.

Gráficos de pizza e colunas com a relação Orders x Revenue por país.

Gráficos com uso do Top N dinâmico.

Indicadores com ícones personalizados.

📌 Técnicas e Destaques

Criação de medidas com DAX para KPIs, médias, percentuais YoY, etc.

Utilização de tooltips, formatação condicional e segmentações inteligentes.

Layout profissional com coerência visual, uso de ícones e foco em usabilidade.

Separação clara entre dados brutos, tratados e visualização.

💼 Tecnologias Utilizadas

SQL Server Management Studio (SSMS)

SQL Integration Services (SSIS)

Power BI Desktop

GitHub para versionamento e portfólio

📁 Repositório

Neste repositório você encontra:

Scripts SQL utilizados na modelagem e criação do DW

Arquivo .pbix do Power BI com o dashboard final

Print screens das páginas do relatório

Pacotes SSIS utilizados no processo de ETL

Documentação explicando o fluxo de dados e lógica das métricas
