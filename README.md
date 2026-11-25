# Superstore Sales Analysis Dashboard (Power BI)

End-to-end Power BI analysis of retail sales data: data preparation with Power Query, a star-style data model, DAX measures, and a multi-page report layout.

## Project goals
- Track sales, profit, and profit margin over time
- Compare performance across regions, categories, and customer segments
- Surface the products and customers driving revenue, and the ones losing money

## Tools
- **Power BI Desktop** for modeling and visualization
- **Power Query (M)** for data cleaning and transformation (`powerquery/`)
- **DAX** for measures and time intelligence (`dax/`)
- **Excel / CSV** as the source format

## Repository contents
| Path | What it is |
|---|---|
| `DAX Ziad.pbix` | The Power BI report file itself |
| `Screenshot 2026-08-31 1646213.png`, `Screenshot 2026-08-31 164623.png` | Screenshots of the built dashboard |
| `data/sample_superstore.csv` | Sample of the classic Superstore retail dataset (orders, products, sales, profit) |
| `powerquery/Superstore_Query.pq` | Full Power Query script: typing, trimming, date handling, derived columns |
| `dax/measures.dax` | All report measures: sales, profit, margin, YoY growth, running totals, rankings |
| `docs/report-design.md` | Page-by-page report layout: visuals, fields, and interactions |

## Data model
Single fact table (`Orders`) plus a calendar table created in DAX (`Calendar`). One-to-many relationship on `Order Date`, marked as the date table for time intelligence.

## Headline measures
- `Total Sales`, `Total Profit`, `Profit Margin %`
- `Sales YoY %`, `Profit YoY %` (same-period-last-year based)
- `Sales Running Total`, `Avg Order Value`, `Orders Count`
- `Top Product by Sales` for card visuals

## Key insights from the analysis
- Technology drives the highest revenue, but Furniture shows the weakest margins at high discounts
- Discount levels above ~20% correlate with negative profit in several sub-categories
- The Consumer segment brings the most orders; Home Office shows the highest average order value

## How to rebuild
1. Load `data/sample_superstore.csv` through the query in `powerquery/Superstore_Query.pq`
2. Create the calendar table and the measures from `dax/measures.dax`
3. Build the pages following `docs/report-design.md`
