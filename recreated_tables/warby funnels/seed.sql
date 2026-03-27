/*INSERT INTO funnels (question, user_id, response) VALUES
('1. What are you looking for?', '005e7f99-d48c-4fce-b605-10506c85aaf7', 'Women''s Styles'),
('2. What''s your fit?', '005e7f99-d48c-4fce-b605-10506c85aaf7', 'Medium'),

('3. Which shapes do you like?', '00a556ed-f13e-4c67-8704-27e3573684cd', 'Round'),
('4. Which colors do you like?', '00a556ed-f13e-4c67-8704-27e3573684cd', 'Two-Tone'),
('1. What are you looking for?', '00a556ed-f13e-4c67-8704-27e3573684cd', 'I''m not sure. Let''s skip it.'),
('2. What''s your fit?', '00a556ed-f13e-4c67-8704-27e3573684cd', 'Narrow'),
('5. When was your last eye exam?', '00a556ed-f13e-4c67-8704-27e3573684cd', '<1 Year'),

('3. Which shapes do you like?', '00bf9d63-0999-43a3-9e5b-9c372e6890d2', 'Square'),
('5. When was your last eye exam?', '00bf9d63-0999-43a3-9e5b-9c372e6890d2', '<1 Year'),
('2. What''s your fit?', '00bf9d63-0999-43a3-9e5b-9c372e6890d2', 'Medium'),
('4. Which colors do you like?', '00bf9d63-0999-43a3-9e5b-9c372e6890d2', 'Tortoise'),
('1. What are you looking for?', '00bf9d63-0999-43a3-9e5b-9c372e6890d2', 'Women''s Styles'),

('2. What''s your fit?', '010ea320-4e00-4604-bfda-afc767d48802', 'Wide'),
('1. What are you looking for?', '010ea320-4e00-4604-bfda-afc767d48802', 'Women''s Styles'),

('1. What are you looking for?', '01938302-8a80-4b53-9cb1-515ff817fb72', 'Men''s Styles');*/

INSERT INTO user_preferences (user_id, style, fit, shape, color) VALUES
('4e8118dc-bb3d-49bf-85fc-cca8d83232ac', 'Women''s Styles', 'Medium', 'Rectangular', 'Tortoise'),
('291f1cca-e507-48be-b063-002b14906468', 'Women''s Styles', 'Narrow', 'Round', 'Black'),
('75122300-0736-4087-b6d8-c0c5373a1a04', 'Women''s Styles', 'Wide', 'Rectangular', 'Two-Tone'),
('75bc6ebd-40cd-4e1d-a301-27ddd93b12e2', 'Women''s Styles', 'Narrow', 'Square', 'Two-Tone'),
('ce965c4d-7a2b-4db6-9847-601747fa7812', 'Women''s Styles', 'Wide', 'Rectangular', 'Black');

INSERT INTO orders (user_id, number_of_pairs, address) VALUES
('d8addd87-3217-4429-9a01-d56d68111da7', '5 pairs', '145 New York 9a'),
('f52b07c8-abe4-4f4a-9d39-ba9fc9a184cc', '5 pairs', '383 Madison Ave'),
('8ba0d2d5-1a31-403e-9fa5-79540f8477f9', '5 pairs', '287 Pell St'),
('4e71850e-8bbf-4e6b-accc-49a7bb46c586', '3 pairs', '347 Madison Square N'),
('3bc8f97f-2336-4dab-bd86-e391609dab97', '5 pairs', '182 Cornelia St');

INSERT INTO purchases (user_id, product_id, style, model_name, color, price) VALUES
('00a9dd17-36c8-430c-9d76-df49d4197dcf', 8, 'Women''s Styles', 'Lucy', 'Jet Black', 150),
('00e15fe0-c86f-4818-9c63-3422211baa97', 7, 'Women''s Styles', 'Lucy', 'Elderflower Crystal', 150),
('017506f7-aba1-4b9d-8b7b-f4426e71b8ca', 4, 'Men''s Styles', 'Dawes', 'Jet Black', 150),
('0176bfb3-9c51-4b1c-b593-87edab3c54cb', 10, 'Women''s Styles', 'Eugene Narrow', 'Rosewood Tortoise', 95),
('01fdf106-f73c-4d3f-a036-2f3e2ab1ce06', 8, 'Women''s Styles', 'Lucy', 'Jet Black', 150);