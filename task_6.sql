INSERT INTO customer
( customer_id = 2,
customer_name = Blessing Malik,
email = bmalik@sandtech.com,
address = 124 Happiness Ave,

customer_id = 3,
customer_name = Obed Ehoneah,
email = eobed@sandtech.com,
address = 125 Happiness  Ave,

customer_id = 4,
customer_name = Nehemial Kamolu,
email = nkamolu@sandtech.com,
address = 126 Happiness  Ave,
)

As new_values
ON DUPLICATE KEY UPDATE
customer_name = new_values.customer_name, email = new_values.email, address = new_values.address;
