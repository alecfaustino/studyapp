-- Insert some users
INSERT INTO users (first_name, last_name, profile_image_url, city, education_level)
VALUES
  ('Alice', 'Smith', 'https://example.com/alice.jpg', 'Calgary', 'Bachelor'),
  ('Bob', 'Johnson', 'https://example.com/bob.jpg', 'Toronto', 'Master'),
  ('Carol', 'Williams', NULL, 'Vancouver', 'PhD');

-- Insert some groups created by users
INSERT INTO groups (name, description, created_by)
VALUES
  ('Developers', 'Group for software developers', 1),
  ('Leet Coders', 'For those who are prepping for technical interviews', 2);

-- Insert some review tags
INSERT INTO review_tags (name)
VALUES
  ('Helpful'),
  ('Knowledgeable'),
  ('Friendly');

-- Insert user subjects
INSERT INTO user_subjects (user_id, subject)
VALUES
  (1, 'JavaScript'),
  (1, 'React'),
  (2, 'CSS'),
  (3, 'Data Science');

-- Insert group users with roles
INSERT INTO group_users (user_id, group_id, role)
VALUES
  (1, 1, 'admin'),   -- Alice is admin in Developers
  (2, 1, 'member'),  -- Bob member in Developers
  (2, 2, 'admin'),   -- Bob admin in Leet Coders
  (3, 2, 'member');  -- Carol member in Leet Coders

-- Insert user ratings
INSERT INTO user_ratings (rated_user_id, tag_id, rating_user_id)
VALUES
  (1, 1, 2),  -- Bob rates Alice as Helpful
  (3, 3, 1);  -- Alice rates Carol as Friendly
