-- table: users
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL
  profile_image_url TEXT,
  city VARCHAR(50),
  education_level VARCHAR(50),
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- table: groups
CREATE TABLE groups (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT,
  created_by INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- table: review tags
CREATE TABLE review_tags (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL UNIQUE
);

-- table: user_subjects
CREATE TABLE user_subjects (
  id SERIAL PRIMARY KEY, 
  user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  subject VARCHAR(150)
);

-- enum for the role in group_users
CREATE TYPE role_enum AS ENUM ('member', 'admin');

-- table: group_users
CREATE TABLE group_users (
  user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  group_id INT NOT NULL REFERENCES groups(id) ON DELETE CASCADE, 
  joined_at TIMESTAMPTZ DEFAULT NOW(),
  role role_enum NOT NULL DEFAULT 'member',
  PRIMARY KEY (user_id, group_id)
);

-- table: user_ratings
CREATE TABLE user_ratings (
  id SERIAL PRIMARY KEY, 
  rated_user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  tag_id INT NOT NULL REFERENCES review_tags(id) ON DELETE CASCADE,
  rating_user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
