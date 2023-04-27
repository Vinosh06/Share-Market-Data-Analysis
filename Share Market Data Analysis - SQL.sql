create database project_3;
show databases;
use project_3;
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM project_3.merged_table;

ALTER TABLE merged_table RENAME COLUMN `Last Sale` TO last_sale;
ALTER TABLE merged_table RENAME COLUMN `Net Change` TO net_change;
ALTER TABLE merged_table RENAME COLUMN `Market Cap` TO market_cap;

UPDATE merged_table SET last_sale = REPLACE(last_sale, '$', '');
UPDATE merged_table SET net_change = REPLACE(net_change, '$', '');

describe merged_table;

ALTER TABLE merged_table MODIFY COLUMN last_sale VARCHAR(255);
UPDATE merged_table SET last_sale = REGEXP_REPLACE(last_sale, '[^0-9]+', '');
ALTER TABLE merged_table MODIFY COLUMN last_sale BIGINT;

ALTER TABLE merged_table MODIFY COLUMN net_change VARCHAR(255);
UPDATE merged_table SET net_change = REGEXP_REPLACE(net_change, '[^0-9]+', '');
ALTER TABLE merged_table MODIFY COLUMN net_change BIGINT;

# 1. Determine the market capitalization of the company in the IT sector with the greatest LastSale value

SELECT sector,market_cap, MAX(last_sale) FROM merged_table
WHERE sector='Information Technology'
GROUP BY sector,market_cap
ORDER BY MAX(last_sale) DESC
LIMIT 1;

# 2. Find the number of companies from each industry

SELECT sector, count(company) FROM 	merged_table
GROUP BY sector;

# 3. List the top 5 companies based on market capitalization

SELECT company, MAX(market_cap) FROM merged_table
GROUP BY company
ORDER BY MAX(market_cap) DESC
LIMIT 5;

# 4. Create a table with sectors and subsectors showcasing the count of companies in each subsector

SELECT sector, subsector, COUNT(company) FROM merged_table
GROUP BY sector,subsector;