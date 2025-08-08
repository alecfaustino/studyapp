-- Drop tables 
-- Dropping those dependent on other tables first (reverse dependency)
DROP TABLE IF EXISTS user_ratings CASCADE;
DROP TABLE IF EXISTS group_users CASCADE;
DROP TABLE IF EXISTS user_subjects CASCADE;
DROP TABLE IF EXISTS review_tags CASCADE;
DROP TABLE IF EXISTS groups CASCADE;
DROP TABLE IF EXISTS users CASCADE;

-- Drop enum incase changes are made to the enum values in the schema
DROP TYPE IF EXISTS role_enum CASCADE;

-- Run Schema
\i server/db/schema.sql

-- run seeds
-- no seeds yet