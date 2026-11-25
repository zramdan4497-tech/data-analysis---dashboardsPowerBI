# Data Analysis & Dashboards (Power BI)

A multi-page Power BI report on member counts by country, gender, and age group. The data covers four countries (Iraq, Syria, Yemen, and Libya) across four tables: Clothes, Food, Money, and Needs.

## The report (DAX Ziad.pbix)

Four pages, one per table:

- **clothes**: member counts by country
- **food**: member counts by country
- **money**: member counts by country
- **needs**: member counts by country, with an added split for ages 6-18

Every page uses the same layout: a clustered column chart of totals by country, KPI cards (total members, total males, total females), and a country slicer.

## Repository contents

| Path | What it is |
|---|---|
| `DAX Ziad.pbix` | The Power BI report file |
| `Screenshot 2026-08-31 1646213.png` | Needs page, filtered to Iraq |
| `Screenshot 2026-08-31 164623.png` | Needs page, all four countries |
| `docs/report-design.md` | Page-by-page layout as implemented in the .pbix |

## Tools

- Power BI Desktop for modeling and visualization
- DAX measures for the totals: per-table member, male, and female counts, plus 6-18 age-group splits in the Needs table
