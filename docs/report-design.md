# Report design: Superstore Sales Dashboard

## Page 1 - Executive Overview
- KPI cards: Total Sales, Total Profit, Profit Margin %, Orders Count
- Line chart: Sales Running Total by Month (Calendar[Date])
- Bar chart: Total Sales by Category, sorted descending
- Map or filled bar: Total Sales by Region
- Slicers: Year, Segment, Category

## Page 2 - Product Analysis
- Table: Product Name, Total Sales, Total Profit, Profit Margin % (conditional formatting on margin, red when negative)
- Column chart: Top 10 products by sales
- Scatter: Discount vs Profit by Sub-Category (bubble size = Quantity)
- Slicers: Category, Sub-Category

## Page 3 - Customer & Segment Insights
- Donut: Sales % of Total by Segment
- Bar: Avg Order Value by Segment
- Table: Top 15 customers by Total Sales with Profit Margin %
- Column: Orders Count by Ship Mode

## Page 4 - Trends & YoY
- Line and column combo: Total Sales (column) and Sales YoY % (line) by month
- KPI cards: Sales YoY %, Profit YoY % vs last year
- Matrix: Sales by Year x Category

## Interactions
- Cross-filtering on all pages; drill-through from product table to Page 2
- Tooltip page with Sales, Profit, Margin %, Orders Count
