ALTER TABLE invoice
	ADD FOREIGN KEY (car) -- in car table
REFERENCES car(car_id) -- primary key on car table
ON DELETE SET NULL;

ALTER TABLE invoice
	ADD FOREIGN KEY (customer) -- in course table
REFERENCES customer(customer_id) -- primary key on teacher table
ON DELETE CASCADE;

ALTER TABLE invoice
	ADD FOREIGN KEY (salesperson) -- in course table
REFERENCES sales_person(staff_id) -- primary key on teacher table
ON DELETE CASCADE;


UPDATE customer
SET email = "ppicasso@gmail.com"
WHERE customer_id = 10001;

UPDATE customer
SET email = "lincoln@us.gov"
WHERE customer_id = 20001;

UPDATE customer
SET email = "hello@napoleon.me"
WHERE customer_id = 30001;



