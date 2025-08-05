-- Enable pgcrypto for UUID generation
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- =========================================
-- 1. Companies Table
-- =========================================
CREATE TABLE companies (
    company_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    reward_threshold INTEGER NOT NULL CHECK (reward_threshold > 0),
    reward VARCHAR(255) NOT NULL
);

-- =========================================
-- 2. Customers Table (email as PK + QR code)
-- =========================================
CREATE TABLE customers (
    email VARCHAR(100) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    qr_code VARCHAR(255) UNIQUE NOT NULL DEFAULT gen_random_uuid()::text
);

-- =========================================
-- 3. Customer Rewards Table (composite PK)
-- Tracks each customer's visits per company
-- =========================================
CREATE TABLE customer_rewards (
    customer_email VARCHAR(100) NOT NULL REFERENCES customers(email) ON DELETE CASCADE,
    company_id INTEGER NOT NULL REFERENCES companies(company_id) ON DELETE CASCADE,
    current_count INTEGER NOT NULL DEFAULT 0 CHECK (current_count >= 0),
    PRIMARY KEY (customer_email, company_id)
);
