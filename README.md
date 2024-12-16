# NPI Taxonomy Database

This was a simple project to use Python (pandas, numpy, pyodbc, sqlalchemy, bcpandas, and others) and SQL to export NPI and taxonomy data from CSV to SQL Server via SSMS.
The links to the data: 
  * for the NPI and taxonomy: https://download.cms.gov/nppes/NPI_Files.html
  * for the taxonomy and details: https://www.nucc.org/index.php/code-sets-mainmenu-41/provider-taxonomy-mainmenu-40/csv-mainmenu-57

Files included:
  * the Python code to load the NPI files from CMS site
  * the configuration screenshot of the manual upload of the taxonomy and details CSV onto SQL Server through SSMS
  * the SQL code to create the primary and foreign keys between the two tables
  * A database diagram from SSMS for the tables

Instructions:
  * Can follow along the comments left in the Python code file, would have to provide your own sql server info
  * Afterwards can set up the second table following the screenshot configuration
  * Lastly use the SQL code to set up the primary and foreign key
