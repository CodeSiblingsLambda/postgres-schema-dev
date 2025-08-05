-- Sample Companies
INSERT INTO companies (company_name, reward_threshold, reward) VALUES
('Bean Bliss Café', 5, 'Free Coffee'),
('Roast Republic', 7, 'Free Donut');

-- Sample Customers (QR code is auto-generated)
INSERT INTO customers (email, full_name) VALUES
('alice@example.com', 'Alice Brew'),
('bob@example.com', 'Bob Roast');

-- Sample Rewards Tracking
INSERT INTO customer_rewards (customer_email, company_id, current_count) VALUES
('alice@example.com', 1, 3),
('bob@example.com', 2, 6);
