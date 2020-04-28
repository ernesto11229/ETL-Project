# Gun Deaths vs Police Deaths (ETL-Project)

The data we will be extracting comes from two sources, both stored as CSV files:
* Police Deaths by County
https://data.world/fivethirtyeight/police-deaths
* Gun Deaths by County
https://data.world/nkrishnaswami/gun-deaths-by-county


The purpose of examining these data sets is to see if there is a correlation between gun deaths and (gun related) police deaths.

Extraction\
The data will be extracted by reading the CSVs into Pandas data frames.

Transforming\
Transformation will take using Excel. We will need to extract the state for each record in both data sets. We will also need to rename the columns in both data sets to make them easier to work with in SQL.

Loading\
The final production database used will be PostgreSQL. Data will be loaded directly into the database by using PgAdmin.

Final Table
The final table should have the following columns:
- state (primary key)
- gun deaths
- police deaths
- poice gun deaths
