-- Table: product
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR,
    description TEXT,
    SKU VARCHAR,
    category_id INT,
    inventory_id INT,
    price DECIMAL,
    discount_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id)
);

-- Table: product_category
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR,
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Table: product_inventory
CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Table: discount
CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR,
    description TEXT,
    discount_percent DECIMAL,
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

