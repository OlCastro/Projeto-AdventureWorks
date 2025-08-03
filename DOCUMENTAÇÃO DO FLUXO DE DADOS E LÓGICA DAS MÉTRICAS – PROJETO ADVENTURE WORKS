# Projeto de Business Intelligence com AdventureWorks

## 1. Visão Geral
Este projeto foi desenvolvido como um portfólio para demonstrar habilidades com SQL, SSIS e Power BI. A fonte de dados utilizada foi o banco público AdventureWorks, com foco na análise de vendas.

O objetivo foi construir uma arquitetura de Business Intelligence com:

- Extração, transformação e carga (ETL) com SSIS
- Construção de um Data Warehouse (DW) relacional com modelagem em estrela
- Criação de dashboards analíticos em Power BI

## 2. Arquitetura de Dados

**Fonte de Dados:** Banco OLTP AdventureWorks (tabelas como Sales.SalesOrderHeader, Sales.SalesOrderDetail, Production.Product etc.)

**Processo ETL com SSIS:**
- Extração das tabelas principais
- Tratamento e transformação dos dados
- Criação das tabelas fato e dimensões no Data Warehouse (DW)

**Modelagem Dimensional:**
- Tabela fato: `DW.FactSales`
- Dimensões: `DW.DimDate`, `DW.DimCustomer`, `DW.DimProduct`, `DW.DimSalesTerritory`

**Camada semântica:**
- Views criadas em SQL para facilitar o consumo no Power BI

**Visualização no Power BI:**
- KPIs, gráficos comparativos, ranking e análises temporais

## 3. Detalhamento do Fluxo de Dados

### ETL com SSIS:
Os dados foram extraídos diretamente do banco AdventureWorks.

**Foram realizadas as seguintes transformações:**
- Cálculo de GrossProfit (lucro bruto = receita - custo)
- Conversão de formatos de data
- Junções para enriquecer a tabela fato com atributos das dimensões

Os dados tratados foram carregados em tabelas no schema DW.

### Data Warehouse:
- `DW.FactSales`: consolida os fatos de vendas, com medidas como TotalRevenue, TotalCost, GrossProfit, OrderQuantity.
- `DW.DimDate`: tabela de calendário com hierarquia Ano > Mês > Dia.
- `DW.DimCustomer`: dados dos clientes.
- `DW.DimProduct`: dados de produto, categoria, subcategoria.
- `DW.DimSalesTerritory`: territórios de venda.

## 4. Lógica das Métricas e Fórmulas DAX

### Métricas Base:

**Total Revenue:**
```dax
Total Revenue = SUM(FactSales[TotalRevenue])
Total Cost:

dax
Total Cost = SUM(FactSales[TotalCost])
Gross Profit:

dax
Gross Profit = SUM(FactSales[GrossProfit])
Total Orders:

dax
Total Orders = COUNT(FactSales[SalesKey])
Métricas de Análise:
Média de Receita por Estado:

dax
Avg Revenue by State = AVERAGEX(VALUES(DimCustomer[StateProvince]), [Total Revenue])
Ticket Médio (por pedido):

dax
Avg Ticket = [Total Revenue] / [Total Orders]
YoY Gross Profit:

dax
YoY Gross Profit = 
VAR CurrentYear = YEAR(MAX(DimDate[FullDate]))
VAR LastYearGrossProfit = 
    CALCULATE([Gross Profit], SAMEPERIODLASTYEAR(DimDate[FullDate]))
RETURN
    DIVIDE([Gross Profit] - LastYearGrossProfit, LastYearGrossProfit)
Filtros aplicados:
Filtros de Data para gráficos comparativos

Filtros Top N (Top 10 Estados) com medida Total Revenue

Slicers para seleção de Ano e Mês

5. Layout e Paleta Visual (Power BI)
Página 1:

Indicadores de performance (Gross Profit, Total Revenue, Total Orders)

Gráficos de barras com evolução mensal

YoY com cor dinâmica

Página 2:

Top 10 estados por vendas

Média de receita por estado

Ticket médio

KPI extra: total de pedidos por estado

Paleta de Cores:

Primário: Azul (#004785)

Secundário: Laranja (#f29f05)

Neutro claro: Cinza claro (#e6e6e6)

Neutro escuro: Grafite (#333333)

Fundo branco ou cinza muito claro (#fafafa)

6. Conclusão
Este projeto mostra a integração entre SQL, SSIS e Power BI em um ciclo completo de BI: desde o tratamento de dados, estruturação de um DW, até a entrega de insights visuais claros e eficazes. O uso de views otimizadas e fórmulas DAX permite uma análise ágil e interativa dos dados de vendas.
