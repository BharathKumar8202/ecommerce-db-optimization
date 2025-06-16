-- Customers table
DROP TABLE IF EXISTS "myEcommerceData".customers;
CREATE TABLE "myEcommerceData".customers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  age SMALLINT NOT NULL,
  address VARCHAR(250) NOT NULL,
  phone_number VARCHAR(20),
  email_address VARCHAR(50),
  CONSTRAINT chk_contact_info CHECK (
    phone_number IS NOT NULL OR email_address IS NOT NULL
  )
);

-- Products table
CREATE TABLE "myEcommerceData".products (
  id SERIAL PRIMARY KEY,
  product_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NOT NULL
);

-- Orders table
CREATE TABLE "myEcommerceData".orders (
  id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date TIMESTAMP NOT NULL,
  CONSTRAINT fk_customer
    FOREIGN KEY (customer_id)
    REFERENCES "myEcommerceData".customers(id)
);

-- Order_Details table (for multiple products in one order — standard 3NF)
CREATE TABLE "myEcommerceData".order_details (
  id SERIAL PRIMARY KEY,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  CONSTRAINT fk_order
    FOREIGN KEY (order_id)
    REFERENCES "myEcommerceData".orders(id),
  CONSTRAINT fk_product
    FOREIGN KEY (product_id)
    REFERENCES "myEcommerceData".products(id)
);
