-- problems table
CREATE TABLE problems (
    problem_id INTEGER PRIMARY KEY,
    domain TEXT,
    task TEXT
);

-- orgs table
CREATE TABLE orgs (
    org_id INTEGER PRIMARY KEY,
    org_name TEXT,
    org_type TEXT
);

-- systems table
CREATE TABLE systems (
    publication_date DATE,
    system TEXT,
    access TEXT,
    parameters REAL,
    org_id INTEGER,
    problem_id INTEGER,
    FOREIGN KEY (org_id) REFERENCES orgs(org_id),
    FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);