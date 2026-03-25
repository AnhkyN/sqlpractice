/*CREATE TABLE survey_responses (
    response_id INTEGER PRIMARY KEY,
    question_text TEXT,
    user_id TEXT,
    response TEXT
);

CREATE TABLE onboarding_modals (
    modal_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id TEXT NOT NULL,
    modal_text TEXT NOT NULL,
    user_action TEXT,
    ab_group TEXT
);*/

CREATE TABLE browse (
    browse_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id TEXT NOT NULL,
    browse_date DATE NOT NULL,
    item_id INTEGER NOT NULL
);

CREATE TABLE checkout (
    checkout_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id TEXT NOT NULL,
    checkout_date DATE NOT NULL,
    item_id INTEGER NOT NULL
);

CREATE TABLE purchase (
    purchase_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id TEXT NOT NULL,
    purchase_date DATE NOT NULL,
    item_id INTEGER NOT NULL
);