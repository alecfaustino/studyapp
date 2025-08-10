-- Enable pgcrypto for UUID generation
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- table: users
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
<<<<<<< HEAD
  password_hash VARCHAR(255) NOT NULL,
=======
  password_hash VARCHAR(255) NOT NULL
>>>>>>> ed5c6bb (add email and password_hash to users table)
  profile_image_url TEXT,
  city VARCHAR(50),
  education_level VARCHAR(50),
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- table: groups
CREATE TABLE groups (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name VARCHAR(50) NOT NULL,
  description TEXT,
  created_by UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- table: review tags
CREATE TABLE review_tags (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name VARCHAR(50) NOT NULL UNIQUE
);

-- table: user_subjects
CREATE TABLE user_subjects (
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  subject VARCHAR(150) NOT NULL, 
  PRIMARY KEY (user_id, subject)
);

-- enum for the role in group_users
CREATE TYPE role_enum AS ENUM ('member', 'admin');

-- table: group_users
CREATE TABLE group_users (
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  group_id UUID NOT NULL REFERENCES groups(id) ON DELETE CASCADE, 
  joined_at TIMESTAMPTZ DEFAULT NOW(),
  role role_enum NOT NULL DEFAULT 'member',
  PRIMARY KEY (user_id, group_id)
);

-- table: user_ratings
CREATE TABLE user_ratings (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(), 
  rated_user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  tag_id UUID NOT NULL REFERENCES review_tags(id) ON DELETE CASCADE,
  rating_user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
