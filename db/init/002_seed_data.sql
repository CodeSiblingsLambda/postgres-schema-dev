-- Sample Companies
INSERT INTO companies (company_name, description, image, reward_threshold, reward)
VALUES
(
  'The Grindhouse',
  'Trendy café known for industrial vibes and strong espresso.',
  'https://media.timeout.com/images/106243370/750/422/image.jpg',
  5,
  'Free Espresso Shot'
),
(
  'City Roast',
  'Upscale coffee bar with curated bean selections and downtown views.',
  'https://www.ft.com/__origami/service/image/v2/images/raw/ftcms%3A87050e02-2926-49f2-ad50-fa164d682167?source=next-article&fit=scale-down&quality=highest&width=1440&dpr=1',
  6,
  'Free Latte'
);


-- Sample Customers (QR code is auto-generated)
INSERT INTO customers (email, full_name) VALUES
('alice@example.com', 'Alice Brew'),
('bob@example.com', 'Bob Roast');

-- Sample Rewards Tracking
INSERT INTO customer_rewards (customer_email, company_id, current_count) VALUES
('alice@example.com', 1, 3),
('bob@example.com', 2, 6);
