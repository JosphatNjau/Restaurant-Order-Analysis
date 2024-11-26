# Restaurant-Order-Analysis
This project analyzes restaurant order data to uncover key insights, such as the most and least popular menu items, as well as types of cuisine, and top spending orders.
## Data source
The dataset contains a quarter's worth of orders from an international cuisine restaurant. It is structured into two tables, the menu_items table and the order_details table.
- Total records: 12,266
- Fields: 8
- File type: [MySQL database](create_restaurant_db.sql)
## Tools
- Database: MySQL
- Skills: SQL, Analysis, Time Series
- Focus: Aggregation, Joins, EDA
## Exploring Menu Items Table
- Total number of items on the menu
- Identification of the least and most expensive items
- The number of Italian dishes on the menu
- The least and most expensive Italian dishes on the menu
- Breakdown of items by category, including the average price for each
- Explore menu items [here](Menu_items.sql)
## Exploring Order Details Table
- Date range of the order data
- Total number of orders and items sold
- Identification of orders with the highest number of items
- The number of orders containing more than 12 items
- Explore order details [here](Order_details.sql)
## Analyzing Customer Behavior
- Least and most ordered items and their respective categories
- Top 5 orders with the highest spending
- Details of the highest spend order
- Detailed breakdown of items purchased in the top 5 highest spend orders
- [Customer behavior analysis](Analyze_Customer_behavior.sql)
## Insights and Recommendations
High-spend customers show a strong preference for Italian dishes, even though these items are not the most popular overall. The top 5 highest spend orders tend to spend a lot on expensive Italian foods. We should keep Italian dishes on the menu as retaining these dishes can help maintain and attract high-value customers.
