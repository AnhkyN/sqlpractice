
INSERT INTO problems (problem_id, domain, task) VALUES 
(1, 'Natural Language Processing', 'Text Generation'),
(2, 'Computer Vision', 'Image Generation');

INSERT INTO orgs (org_id, org_name, org_type) VALUES 
(1, 'OpenAI', 'Company'),
(2, 'Google', 'Company');



INSERT INTO systems (publication_date, system, access, parameters, org_id, problem_id) VALUES 
('2023-01-15', 'GPT-4', 'API', 0.75, 1, 1),
('2023-03-10', 'DALL-E', 'Web', 0.90, 2, 2);
