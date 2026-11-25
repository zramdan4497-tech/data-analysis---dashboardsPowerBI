# Report design: DAX Ziad.pbix (as implemented)

## Data model

Four tables: Clothes, Food, Money, Needs. Each table has a Country column (Iraq, Lybia, Syria, Yemen, as spelled in the data) and its own DAX measures.

Measure names as they appear in the file:

- Clothes: total members, total males, total famales
- Food: total members f, total males f, total famales f
- Money: total members m, total males m, total females m
- Needs: total females n, total males n, total females 6-18 n, total male 6-18 n

## Pages (in report order)

1. **clothes**: clustered column chart (by Country; total famales, total males, total members), card visual with the three Clothes totals, Country slicer (Clothes.Country).
2. **food**: clustered column chart (by Country; the three Food measures), card visual with the Clothes totals, Country slicer (Food.Country).
3. **moeny**: clustered column chart (by Country; the three Money measures), card visual with the Clothes totals, Country slicer (Money.Country). The page name is spelled "moeny" in the file.
4. **needs**: clustered column chart (by Country; total females n, total males n, total females 6-18 n, total male 6-18 n), card visual with the Clothes totals, Country slicer (Needs.Country).

## Notes

- The KPI cards on all four pages show the Clothes measures.
- The report uses a custom color theme (Divergent) registered in the file.
