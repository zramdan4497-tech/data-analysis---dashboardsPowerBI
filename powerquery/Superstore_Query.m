let
    // Load the raw CSV export
    Source = Csv.Document(
        File.Contents("data\sample_superstore.csv"),
        [Delimiter = ",", Columns = 18, Encoding = 65001, QuoteStyle = QuoteStyle.Csv]
    ),
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),

    // Trim text and remove blank rows
    Trimmed = Table.TransformColumns(PromotedHeaders, {}, Text.Trim),
    NoBlanks = Table.SelectRows(Trimmed, each [Order ID] <> null and [Order ID] <> ""),

    // Correct data types
    Typed = Table.TransformColumnTypes(NoBlanks, {
        {"Order Date", type date}, {"Ship Date", type date},
        {"Sales", type number}, {"Quantity", Int64.Type},
        {"Discount", type number}, {"Profit", type number}
    }, "en-US"),

    // Derived columns
    WithShipDays = Table.AddColumn(Typed, "Ship Days", each Date.Day([Ship Date] - [Order Date]), Int64.Type),
    WithYear = Table.AddColumn(WithShipDays, "Order Year", each Date.Year([Order Date]), Int64.Type),
    WithMonth = Table.AddColumn(WithYear, "Order Month", each Date.ToText([Order Date], "MMM"), type text),

    // Flag loss-making orders for conditional formatting
    WithLossFlag = Table.AddColumn(WithMonth, "Is Loss", each [Profit] < 0, type logical),

    // Final column order
    Reordered = Table.ReorderColumns(WithLossFlag, {
        "Order ID", "Order Date", "Ship Date", "Ship Days", "Ship Mode",
        "Customer ID", "Customer Name", "Segment",
        "Country", "City", "Region",
        "Product ID", "Category", "Sub-Category", "Product Name",
        "Sales", "Quantity", "Discount", "Profit", "Order Year", "Order Month", "Is Loss"
    })
in
    Reordered
