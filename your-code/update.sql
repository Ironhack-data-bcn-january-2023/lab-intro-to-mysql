USE lab_mysql;

-- Updating the spelling mistake 
UPDATE salespeople
SET CompanyID='Miami'
WHERE CompanyID='Mimia';

UPDATE customer
SET Email =
	CASE 'Name'
		WHEN '-' THEN 'ppicasso@gmail.com'
        WHEN '-' THEN 'lincoln@us.gov'
        WHEN '-' THEN 'hello@napoleon.me'
	END;
-- this query runs but returns an empty value where the email should go
-- WHERE 'Name' IN ('-', '-', '-')